import datetime
import warnings

import cv2
import imutils
import numpy as np
import pymysql
import tensorflow as tf
from flask import Flask, request, jsonify
from flask_cors import CORS
from sklearn.utils import shuffle

warnings.filterwarnings("ignore", category=FutureWarning)
warnings.filterwarnings("ignore", category=DeprecationWarning)
app = Flask(__name__)
cors = CORS(app)

model_dir = tf.keras.models.load_model('models')
detection_status = ""
detection_message = ""
detection_probabiliy = "Probability="
detection_probabiliy_percentage = ""
color = (0, 0, 0)


def dbConnect():
    return pymysql.connect(
        host='localhost',
        user='root',
        password='root',
        db='project_db',
        cursorclass=pymysql.cursors.DictCursor,
        port=3306
    )


@app.route('/load_inference')
def load_inference():
    global detection_status
    global detection_message
    global detection_probabiliy
    global color
    global detection_probabiliy_percentage

    # input_filename = "Y92.png"
    # input_filepath = "F:/projectworkspace/com.aibasebraintumordetection/src/main/webapp/document/dataset/"

    input_filename = request.args.get('datasetFileName')
    input_filepath = request.args.get('datasetFilePath')
    login_id = request.args.get('loginId')
    detection_datetime = datetime.datetime.now()
    detection_datetime = detection_datetime.strftime("%d-%m-%Y %H:%M:%S")

    input_filepath = input_filepath.replace("\\", "/")

    output_filename = "output_" + input_filename
    output_filepath = "F:/projectworkspace/com.aibasebraintumordetection/src/main/webapp/document/output_image/"

    input_file = input_filepath + input_filename
    output_file = output_filepath + output_filename

    image = cv2.imread(input_file)
    IMG_WIDTH, IMG_HEIGHT = (224, 224)
    X_sample, y_sample = detection(image, (IMG_WIDTH, IMG_HEIGHT))
    y_sample_prob = model_dir.predict(X_sample)

    for i in y_sample_prob:
        for j in i:
            j = j * 100
            if j > 70.00:
                detection_status = "Red"
                j = "{:.2f}".format(j)
                detection_probabiliy = str(j) + "% High Probability"
                detection_probabiliy_percentage = str(j) + "%"
                detection_message = "Tumor"
                color = (0, 0, 255)
                output_display(X_sample[0], color, output_file)
            else:
                while j < 1:
                    detection_status = "Green"
                    j = j * 10
                j = "{:.2f}".format(j)
                detection_probabiliy = str(j) + "% Low Probability"
                detection_probabiliy_percentage = str(j) + "%"
                detection_message = "No tumor"
                color = (0, 255, 0)

                output_display(X_sample[0], color, output_file)

    print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>")
    connection = dbConnect()
    cursor = connection.cursor()
    cursor.execute(
        "insert into detection_table(detection_datetime,detction_login_id,detection_input_filename,detection_status,detection_output_filename,detection_probability,detection_output_filepath,detection_input_filepath) values ('{}','{}','{}','{}','{}','{}','{}','{}')".format(
            detection_datetime, login_id, input_filename, detection_message, output_filename,
            detection_probabiliy_percentage, output_filepath, input_filepath))

    connection.commit()
    cursor.close()
    connection.close()
    response_dict = {'message': detection_message + detection_probabiliy}
    response = jsonify(response_dict)
    response.headers.add('Access-Control-Allow-Origin', '*')
    return response


def detection(image, image_size):
    image_width, image_height = image_size

    new_image = crop_brain_contour(image)
    new_image = cv2.resize(new_image, dsize=(image_width, image_height), interpolation=cv2.INTER_CUBIC)
    new_image = cv2.cvtColor(new_image, cv2.COLOR_BGR2RGB)
    new_image = new_image / 255.
    X = np.array([new_image])
    y = np.array([0])
    X, y = shuffle(X, y)
    return X, y


def crop_brain_contour(image):
    # Convert the image to grayscale, and blur it slightly
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    gray = cv2.GaussianBlur(gray, (5, 5), 0)

    # Threshold the image, then perform a series of erosions +
    # dilations to remove any small regions of noise
    thresh = cv2.threshold(gray, 45, 255, cv2.THRESH_BINARY)[1]
    thresh = cv2.erode(thresh, None, iterations=2)
    thresh = cv2.dilate(thresh, None, iterations=2)

    # Find contours in thresholded image, then grab the largest one
    cnts = cv2.findContours(thresh.copy(), cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
    cnts = imutils.grab_contours(cnts)
    c = max(cnts, key=cv2.contourArea)

    # Find the extreme points
    extLeft = tuple(c[c[:, :, 0].argmin()][0])
    extRight = tuple(c[c[:, :, 0].argmax()][0])
    extTop = tuple(c[c[:, :, 1].argmin()][0])
    extBot = tuple(c[c[:, :, 1].argmax()][0])

    # crop new image out of the original image using the four extreme points (left, right, top, bottom)
    new_image = image[extTop[1]:extBot[1], extLeft[0]:extRight[0]]
    return new_image


def output_display(new_image, color, output_file):  #
    org = (0, 50)
    font = cv2.FONT_HERSHEY_COMPLEX_SMALL
    fontScale = 0.8
    thickness = 1
    new_image = cv2.putText(new_image, detection_probabiliy, org, font, fontScale, color, thickness, cv2.LINE_AA)
    new_image = cv2.resize(new_image, (780, 540), interpolation=cv2.IMWRITE_JPEG_CHROMA_QUALITY)


    new_image = cv2.convertScaleAbs(new_image, alpha=(255.0))


    cv2.imwrite(output_file, new_image)

    cv2.imshow("Detected Image", new_image)
    print("output_file=", output_file)
    if cv2.waitKey(0) & 0xFF == ord('q'):
        cv2.destroyAllWindows()


app.run(port=1235, threaded=True, debug=True)
