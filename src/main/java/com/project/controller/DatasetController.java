package com.project.controller;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.imageio.ImageIO;
import javax.imageio.stream.ImageInputStream;
import javax.servlet.http.HttpServletRequest;

import org.apache.tomcat.jni.File;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import com.mysql.fabric.xmlrpc.base.Data;
import com.project.model.CityVO;
import com.project.model.ComplainVO;
import com.project.model.DatasetVO;
import com.project.model.LoginVO;
import com.project.model.RegisterVO;
import com.project.model.StateVO;
import com.project.service.ComplainService;
import com.project.service.DatasetService;
import com.project.utils.Basemethods;

import com.itextpdf.io.image.ImageData;
import com.itextpdf.io.image.ImageDataFactory;

@Controller
public class DatasetController {

	@Autowired
	private DatasetService datasetService;

	@Autowired
	private ComplainService complainService;

	/*
	 * @GetMapping(value = "admin/addDataset") public ModelAndView addDataset()
	 * { return new ModelAndView("admin/addDataset", "datasetVO", new
	 * DatasetVO());
	 * 
	 * }
	 * 
	 * @PostMapping(value = "admin/saveDataset") public ModelAndView
	 * saveDataset(@ModelAttribute DatasetVO datasetVO, @RequestParam("file")
	 * MultipartFile file, HttpServletRequest request) { String path =
	 * request.getSession().getServletContext().getRealPath("/");
	 * 
	 * String fileName = file.getOriginalFilename();
	 * 
	 * String filePath = path + "document\\dataset\\";
	 * 
	 * 
	 * try { byte barr[] = file.getBytes();
	 * 
	 * BufferedOutputStream bout = new BufferedOutputStream(new
	 * FileOutputStream(filePath + "/" + fileName));
	 * 
	 * bout.write(barr); bout.flush(); bout.close();
	 * 
	 * } catch (Exception e) { e.printStackTrace(); }
	 * 
	 * datasetVO.setDatasetFileName(fileName);
	 * 
	 * datasetVO.setDatasetFilePath(filePath);
	 * this.datasetService.saveDataset(datasetVO); return new
	 * ModelAndView("redirect:viewDataset"); }
	 */
	@GetMapping(value = "admin/viewDataset")
	public ModelAndView viewDataset() {
		List<DatasetVO> datasetList = this.datasetService.getDataset();

		return new ModelAndView("admin/viewDataset", "datasetList", datasetList);

	}

	@GetMapping(value = "admin/deleteDataset")
	public ModelAndView deleteDataset(@ModelAttribute DatasetVO datasetVO, @RequestParam int id) {
		datasetVO.setId(id);
		List<DatasetVO> datasetList = this.datasetService.getDatasetById(datasetVO);
		DatasetVO datasetVO2 = datasetList.get(0);
		datasetVO2.setStatus(false);
		this.datasetService.saveDataset(datasetVO2);
		return new ModelAndView("redirect:viewDataset");

	}

	// ---------------------USER-----------------------------------------------
	@GetMapping(value = "user/addDataset")
	public ModelAndView addUserDataset() {
		return new ModelAndView("user/addDataset", "datasetVO", new DatasetVO());

	}

	@PostMapping(value = "user/saveDataset")
	public ModelAndView saveUserDataset(@ModelAttribute DatasetVO datasetVO, @RequestParam("file") MultipartFile file,
			HttpServletRequest request) {
		String path = request.getSession().getServletContext().getRealPath("/");

		String fileName = file.getOriginalFilename();

		String filePath = path + "document\\dataset\\";

		try {
			byte barr[] = file.getBytes();

			BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(filePath + "/" + fileName));

			bout.write(barr);
			bout.flush();
			bout.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		datasetVO.setDatasetFileName(fileName);

		datasetVO.setDatasetFilePath(filePath);

		String username = Basemethods.getUser();
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(username);

		List<LoginVO> loginList = this.complainService.getLoginByUsername(loginVO);
		LoginVO loginVO1 = loginList.get(0);

		datasetVO.setLoginVO(loginVO1);

		this.datasetService.saveDataset(datasetVO);
		return new ModelAndView("redirect:viewDataset");
	}

	@GetMapping(value = "user/viewDataset")
	public ModelAndView viewUserDataset(@ModelAttribute DatasetVO datasetVO) {
		
		

		String username = Basemethods.getUser();
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(username);

		List<LoginVO> loginList = this.complainService.getLoginByUsername(loginVO);
		LoginVO loginVO1 = loginList.get(0);
		datasetVO.setLoginVO(loginVO1);

		List<DatasetVO> datasetList = this.datasetService.getUserDataset(datasetVO);

		return new ModelAndView("user/viewDataset", "datasetList", datasetList);

	}

	@GetMapping(value = "user/getDatasetById")
	public ResponseEntity DatasetControllers(@ModelAttribute DatasetVO datasetVO, @RequestParam int id) {
		datasetVO.setId(id);
		List<DatasetVO> datasetList = this.datasetService.getDatasetById(datasetVO);

		System.out.println(id);
		System.out.println(datasetList);

		return new ResponseEntity(datasetList, HttpStatus.OK);
	}

	@GetMapping(value = "user/generatePdf")
	public ModelAndView downloadPdf(@ModelAttribute DatasetVO datasetVO,@ModelAttribute RegisterVO registerVO,@RequestParam int id)
			throws FileNotFoundException, DocumentException {

		
		String username=Basemethods.getUser();
		LoginVO loginVO=new LoginVO();
		loginVO.setUsername(username);
		
		List<LoginVO> loginList =this.complainService.getLoginByUsername(loginVO);
		LoginVO loginVO1=loginList.get(0);
		
		
		
		

		Date d=new Date();
		SimpleDateFormat formatter=new SimpleDateFormat("dd-M-yyyy");
		String date= formatter.format(d); 
		

		
		
		
		datasetVO.setId(id);
		System.out.println("============================="+id);
		List<DatasetVO> datasetList=this.datasetService.getDatasetById(datasetVO);

		DatasetVO datasetVO1=datasetList.get(0);
		
		registerVO.setLoginVO(loginVO1);
		
		List<RegisterVO> userregisterList=this.datasetService.getUserDetailList(registerVO);

		RegisterVO registerVO1=userregisterList.get(0);

		
		
		String input_image_name=datasetVO1.getDatasetFileName();
		String output_image_name=datasetVO1.getDetectionOutputFilePath();
		
		
		datasetVO1.setDetectionReport(output_image_name+".pdf");
		datasetVO1.setDetectionReportStatus("Generated");
		this.datasetService.saveDataset(datasetVO1);
		
		String message_detection;
		if(datasetVO1.getDetectionStatus().equals("Tumor")){
			message_detection="NOTE : This is kindly to inform you that the 'Tumor' is detected in your MRI image. "
					+ "Please consult doctor or kindly buy our package for using multiple functionalities with will"
					+ "guide you throughout your treatment.";
			
			
			
		}
		else{
			 message_detection="NOTE : We are delighted to inform you that 'No Tumor' has been detected in your MRI image.";
			
		}
		
		
		
		
		
		try {
			String file_name = "F:\\projectworkspace\\com.aibasebraintumordetection\\src\\main\\webapp\\document\\pdf\\"+output_image_name+".pdf";
			Document document = new Document();
			PdfWriter.getInstance(document, new FileOutputStream(file_name));
			Paragraph space = new Paragraph("\n");

			document.open();
			Paragraph heading = new Paragraph("AI Base Brain Tumor Detection");			
			heading.setAlignment(Element.TITLE);
			document.add(heading);

			
			document.add(space);


			
			
			
		
					
			//ADMIN DATA
			String mannualspace="                                     "
					+ "                                                              ";
					
			
			Paragraph current_date=new Paragraph(mannualspace+"Date : "+date);
			
			document.add(current_date);			
			
			String adminname = mannualspace+ "Admin : Raj Panjwani";
			String adminemail =mannualspace+ "Email : admin@tumordetection.com ";
			String admincontact = mannualspace+ "Contact : 9985741236";
			
			
			
			Paragraph admin_name=new Paragraph(adminname);
			Paragraph admin_email = new Paragraph(adminemail);
			Paragraph admin_contact=new Paragraph(admincontact);
			
			document.add(admin_name);
			document.add(admin_email);
			document.add(admin_contact);
			document.add(space);
			
			
			//User DATA
			

			String user_name= registerVO1.getName();
			String phonenumber = registerVO1.getPhoneNumber();
			String cityname=registerVO1.getCityVO().getCityName();
			String statename = registerVO1.getStateVO().getStateName();
			String address= registerVO1.getAddress();
			
			
			
			String user__name = "Name : "+ user_name;
			String user_phonenumber ="Phone Number  : " + phonenumber;
			String user_address = "Address : "+address;
			String user_city = "City : "+cityname;
			String user_state = "State : "+statename;
			
			
			
			Paragraph user___name=new Paragraph(user__name);
			Paragraph user__phonenumber = new Paragraph(user_phonenumber);
			Paragraph user__address=new Paragraph(user_address);
			Paragraph user__city = new Paragraph(user_city);
			Paragraph user__state=new Paragraph(user_state);
			
			user___name.setAlignment(Element.ALIGN_LEFT);
			user__phonenumber.setAlignment(Element.ALIGN_LEFT);
			user__address.setAlignment(Element.ALIGN_LEFT);
			user__city.setAlignment(Element.ALIGN_LEFT);
			user__state.setAlignment(Element.ALIGN_LEFT);
			
			
			
			document.add(user___name);
			document.add(user__phonenumber);
			document.add(user__address);
			document.add(user__city);
			document.add(user__state);
			
			document.add(space);
			document.add(space);
			document.add(space);
			
			
			
			
			
			
			//-----------Input Image--------------
			
			Paragraph inputText = new Paragraph(" The Image uploaded by user is as follows:-");
			document.add(inputText);
			document.add(space);
			
			//Image			
			String input_image_path="F:\\projectworkspace\\com.aibasebraintumordetection\\src\\main\\webapp\\document\\dataset\\"+input_image_name;
			Image input_image=Image.getInstance(input_image_path);
			
			input_image.scaleAbsolute(500, 350);
			
			input_image.setAlignment(Element.ALIGN_CENTER);
			document.add(input_image);			
			
			//Detected Input Text 
			Paragraph input_image_Text = new Paragraph("[Figure :1 Uploaded Image]");
			input_image_Text.setAlignment(Element.ALIGN_CENTER);
			document.add(input_image_Text);
			
			
			
			document.add(space);
			document.add(space);
			
			
			
			document.newPage();
			
			
			
			
			Paragraph para2 = new Paragraph(" The Output Image  is as follows:-");
			document.add(para2);
			document.add(space);
			document.add(space);
			
			String output_image_path="F:\\projectworkspace\\com.aibasebraintumordetection\\src\\main\\webapp\\document\\output_image\\"+output_image_name;
			Image output_image=Image.getInstance(output_image_path);
			
			
			output_image.setAlignment(Element.ALIGN_CENTER);
			document.add(output_image);
			
			
			Paragraph output_image_Text = new Paragraph("[Figure :2 Detected Image]");
			output_image_Text.setAlignment(Element.ALIGN_CENTER);
			document.add(output_image_Text);
			document.add(space);
			document.add(space);
			document.add(space);
			
			
			//-----------MESSAGE---------------
			
			String message="If you have any Problem/Query feel free to contact us.\n Thank you for using our system.";
			
				
			
				Paragraph message_Text = new Paragraph(message_detection);
				message_Text.setAlignment(Element.ALIGN_LEFT);
				document.add(message_Text);
				document.add(space);
				document.add(space);

				Paragraph END_message_Text = new Paragraph(message);
				END_message_Text.setAlignment(Element.ALIGN_CENTER);
				document.add(END_message_Text);
				
				
			
			
			document.close();

		} catch (Exception e) {
			System.out.println(e);
		}


		return new ModelAndView("redirect:viewDataset");

	}

}
