??

??
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape?"serve*2.0.02v2.0.0-rc2-26-g64c3d382ca8??
|
conv0/kernelVarHandleOp*
dtype0*
shape: *
shared_nameconv0/kernel*
_output_shapes
: 
u
 conv0/kernel/Read/ReadVariableOpReadVariableOpconv0/kernel*
dtype0*&
_output_shapes
: 
l

conv0/biasVarHandleOp*
shared_name
conv0/bias*
shape: *
_output_shapes
: *
dtype0
e
conv0/bias/Read/ReadVariableOpReadVariableOp
conv0/bias*
_output_shapes
: *
dtype0
j
	bn0/gammaVarHandleOp*
dtype0*
shape: *
shared_name	bn0/gamma*
_output_shapes
: 
c
bn0/gamma/Read/ReadVariableOpReadVariableOp	bn0/gamma*
_output_shapes
: *
dtype0
h
bn0/betaVarHandleOp*
dtype0*
shared_name
bn0/beta*
shape: *
_output_shapes
: 
a
bn0/beta/Read/ReadVariableOpReadVariableOpbn0/beta*
dtype0*
_output_shapes
: 
v
bn0/moving_meanVarHandleOp*
shape: * 
shared_namebn0/moving_mean*
_output_shapes
: *
dtype0
o
#bn0/moving_mean/Read/ReadVariableOpReadVariableOpbn0/moving_mean*
dtype0*
_output_shapes
: 
~
bn0/moving_varianceVarHandleOp*$
shared_namebn0/moving_variance*
shape: *
_output_shapes
: *
dtype0
w
'bn0/moving_variance/Read/ReadVariableOpReadVariableOpbn0/moving_variance*
dtype0*
_output_shapes
: 
o
	fc/kernelVarHandleOp*
dtype0*
shared_name	fc/kernel*
shape:	?**
_output_shapes
: 
h
fc/kernel/Read/ReadVariableOpReadVariableOp	fc/kernel*
_output_shapes
:	?**
dtype0
f
fc/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	fc/bias
_
fc/bias/Read/ReadVariableOpReadVariableOpfc/bias*
dtype0*
_output_shapes
:
f
	Adam/iterVarHandleOp*
shape: *
dtype0	*
shared_name	Adam/iter*
_output_shapes
: 
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
shape: *
dtype0*
shared_nameAdam/beta_1*
_output_shapes
: 
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
dtype0*
shape: *
shared_nameAdam/beta_2*
_output_shapes
: 
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
shared_name
Adam/decay*
shape: *
_output_shapes
: *
dtype0
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
dtype0*
_output_shapes
: 
x
Adam/learning_rateVarHandleOp*
dtype0*#
shared_nameAdam/learning_rate*
shape: *
_output_shapes
: 
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
^
totalVarHandleOp*
dtype0*
shape: *
shared_nametotal*
_output_shapes
: 
W
total/Read/ReadVariableOpReadVariableOptotal*
dtype0*
_output_shapes
: 
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
?
Adam/conv0/kernel/mVarHandleOp*$
shared_nameAdam/conv0/kernel/m*
shape: *
_output_shapes
: *
dtype0
?
'Adam/conv0/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv0/kernel/m*&
_output_shapes
: *
dtype0
z
Adam/conv0/bias/mVarHandleOp*
dtype0*
shape: *"
shared_nameAdam/conv0/bias/m*
_output_shapes
: 
s
%Adam/conv0/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv0/bias/m*
dtype0*
_output_shapes
: 
x
Adam/bn0/gamma/mVarHandleOp*!
shared_nameAdam/bn0/gamma/m*
shape: *
_output_shapes
: *
dtype0
q
$Adam/bn0/gamma/m/Read/ReadVariableOpReadVariableOpAdam/bn0/gamma/m*
dtype0*
_output_shapes
: 
v
Adam/bn0/beta/mVarHandleOp*
shape: *
dtype0* 
shared_nameAdam/bn0/beta/m*
_output_shapes
: 
o
#Adam/bn0/beta/m/Read/ReadVariableOpReadVariableOpAdam/bn0/beta/m*
_output_shapes
: *
dtype0
}
Adam/fc/kernel/mVarHandleOp*
dtype0*
shape:	?**!
shared_nameAdam/fc/kernel/m*
_output_shapes
: 
v
$Adam/fc/kernel/m/Read/ReadVariableOpReadVariableOpAdam/fc/kernel/m*
_output_shapes
:	?**
dtype0
t
Adam/fc/bias/mVarHandleOp*
dtype0*
shared_nameAdam/fc/bias/m*
shape:*
_output_shapes
: 
m
"Adam/fc/bias/m/Read/ReadVariableOpReadVariableOpAdam/fc/bias/m*
dtype0*
_output_shapes
:
?
Adam/conv0/kernel/vVarHandleOp*
shape: *
dtype0*$
shared_nameAdam/conv0/kernel/v*
_output_shapes
: 
?
'Adam/conv0/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv0/kernel/v*&
_output_shapes
: *
dtype0
z
Adam/conv0/bias/vVarHandleOp*
shape: *
dtype0*"
shared_nameAdam/conv0/bias/v*
_output_shapes
: 
s
%Adam/conv0/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv0/bias/v*
dtype0*
_output_shapes
: 
x
Adam/bn0/gamma/vVarHandleOp*
shape: *
dtype0*!
shared_nameAdam/bn0/gamma/v*
_output_shapes
: 
q
$Adam/bn0/gamma/v/Read/ReadVariableOpReadVariableOpAdam/bn0/gamma/v*
dtype0*
_output_shapes
: 
v
Adam/bn0/beta/vVarHandleOp*
dtype0* 
shared_nameAdam/bn0/beta/v*
shape: *
_output_shapes
: 
o
#Adam/bn0/beta/v/Read/ReadVariableOpReadVariableOpAdam/bn0/beta/v*
dtype0*
_output_shapes
: 
}
Adam/fc/kernel/vVarHandleOp*
dtype0*!
shared_nameAdam/fc/kernel/v*
shape:	?**
_output_shapes
: 
v
$Adam/fc/kernel/v/Read/ReadVariableOpReadVariableOpAdam/fc/kernel/v*
dtype0*
_output_shapes
:	?*
t
Adam/fc/bias/vVarHandleOp*
shape:*
dtype0*
shared_nameAdam/fc/bias/v*
_output_shapes
: 
m
"Adam/fc/bias/v/Read/ReadVariableOpReadVariableOpAdam/fc/bias/v*
dtype0*
_output_shapes
:

NoOpNoOp
?2
ConstConst"/device:CPU:0*
dtype0*
_output_shapes
: *?2
value?2B?2 B?2
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
R
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
?
axis
	gamma
 beta
!moving_mean
"moving_variance
#trainable_variables
$	variables
%regularization_losses
&	keras_api
R
'trainable_variables
(	variables
)regularization_losses
*	keras_api
R
+trainable_variables
,	variables
-regularization_losses
.	keras_api
R
/trainable_variables
0	variables
1regularization_losses
2	keras_api
R
3trainable_variables
4	variables
5regularization_losses
6	keras_api
h

7kernel
8bias
9trainable_variables
:	variables
;regularization_losses
<	keras_api
?
=iter

>beta_1

?beta_2
	@decay
Alearning_ratemvmwmx my7mz8m{v|v}v~ v7v?8v?
8
0
1
2
 3
!4
"5
76
87
*
0
1
2
 3
74
85
 
?
	variables
trainable_variables
Blayer_regularization_losses
regularization_losses
Cnon_trainable_variables

Dlayers
Emetrics
 
 
 
 
?
trainable_variables
	variables
Flayer_regularization_losses
regularization_losses
Gnon_trainable_variables

Hlayers
Imetrics
 
 
 
?
trainable_variables
	variables
Jlayer_regularization_losses
regularization_losses
Knon_trainable_variables

Llayers
Mmetrics
XV
VARIABLE_VALUEconv0/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
conv0/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
trainable_variables
	variables
Nlayer_regularization_losses
regularization_losses
Onon_trainable_variables

Players
Qmetrics
 
TR
VARIABLE_VALUE	bn0/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEbn0/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEbn0/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEbn0/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
 1

0
 1
!2
"3
 
?
#trainable_variables
$	variables
Rlayer_regularization_losses
%regularization_losses
Snon_trainable_variables

Tlayers
Umetrics
 
 
 
?
'trainable_variables
(	variables
Vlayer_regularization_losses
)regularization_losses
Wnon_trainable_variables

Xlayers
Ymetrics
 
 
 
?
+trainable_variables
,	variables
Zlayer_regularization_losses
-regularization_losses
[non_trainable_variables

\layers
]metrics
 
 
 
?
/trainable_variables
0	variables
^layer_regularization_losses
1regularization_losses
_non_trainable_variables

`layers
ametrics
 
 
 
?
3trainable_variables
4	variables
blayer_regularization_losses
5regularization_losses
cnon_trainable_variables

dlayers
emetrics
US
VARIABLE_VALUE	fc/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEfc/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

70
81

70
81
 
?
9trainable_variables
:	variables
flayer_regularization_losses
;regularization_losses
gnon_trainable_variables

hlayers
imetrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1
?
0
1
2
3
4
5
6
7
	8

j0
 
 
 
 
 
 
 
 
 
 
 
 
 

!0
"1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
x
	ktotal
	lcount
m
_fn_kwargs
ntrainable_variables
o	variables
pregularization_losses
q	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE
 
 

k0
l1
 
?
ntrainable_variables
o	variables
rlayer_regularization_losses
pregularization_losses
snon_trainable_variables

tlayers
umetrics
 

k0
l1
 
 
{y
VARIABLE_VALUEAdam/conv0/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv0/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/bn0/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/bn0/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/fc/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/fc/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv0/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv0/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/bn0/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/bn0/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/fc/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/fc/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_1Placeholder*&
shape:???????????*
dtype0*1
_output_shapes
:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv0/kernel
conv0/bias	bn0/gammabn0/betabn0/moving_meanbn0/moving_variance	fc/kernelfc/bias**
config_proto

GPU 

CPU2J 8*
Tin
2	*'
_output_shapes
:?????????*+
f&R$
"__inference_signature_wrapper_7009*
Tout
2*+
_gradient_op_typePartitionedCall-7398
O
saver_filenamePlaceholder*
shape: *
_output_shapes
: *
dtype0
?	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename conv0/kernel/Read/ReadVariableOpconv0/bias/Read/ReadVariableOpbn0/gamma/Read/ReadVariableOpbn0/beta/Read/ReadVariableOp#bn0/moving_mean/Read/ReadVariableOp'bn0/moving_variance/Read/ReadVariableOpfc/kernel/Read/ReadVariableOpfc/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp'Adam/conv0/kernel/m/Read/ReadVariableOp%Adam/conv0/bias/m/Read/ReadVariableOp$Adam/bn0/gamma/m/Read/ReadVariableOp#Adam/bn0/beta/m/Read/ReadVariableOp$Adam/fc/kernel/m/Read/ReadVariableOp"Adam/fc/bias/m/Read/ReadVariableOp'Adam/conv0/kernel/v/Read/ReadVariableOp%Adam/conv0/bias/v/Read/ReadVariableOp$Adam/bn0/gamma/v/Read/ReadVariableOp#Adam/bn0/beta/v/Read/ReadVariableOp$Adam/fc/kernel/v/Read/ReadVariableOp"Adam/fc/bias/v/Read/ReadVariableOpConst**
config_proto

GPU 

CPU2J 8*&
f!R
__inference__traced_save_7446*
Tout
2*
_output_shapes
: *(
Tin!
2	*+
_gradient_op_typePartitionedCall-7447
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv0/kernel
conv0/bias	bn0/gammabn0/betabn0/moving_meanbn0/moving_variance	fc/kernelfc/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/conv0/kernel/mAdam/conv0/bias/mAdam/bn0/gamma/mAdam/bn0/beta/mAdam/fc/kernel/mAdam/fc/bias/mAdam/conv0/kernel/vAdam/conv0/bias/vAdam/bn0/gamma/vAdam/bn0/beta/vAdam/fc/kernel/vAdam/fc/bias/v*)
f$R"
 __inference__traced_restore_7540*'
Tin 
2*
Tout
2*+
_gradient_op_typePartitionedCall-7541**
config_proto

GPU 

CPU2J 8*
_output_shapes
: ܆
?
_
C__inference_max_pool0_layer_call_and_return_conditional_losses_6696

inputs
identity?
MaxPoolMaxPoolinputs*
strides
*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?	
?
<__inference_fc_layer_call_and_return_conditional_losses_6865

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:	?**
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:??????????
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*/
_input_shapes
:??????????*::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
?

?
2__inference_BrainDetectionModel_layer_call_fn_7135

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8*V
fQRO
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_6964*
Tin
2	*
Tout
2*+
_gradient_op_typePartitionedCall-6965**
config_proto

GPU 

CPU2J 8*'
_output_shapes
:??????????
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*P
_input_shapes?
=:???????????::::::::22
StatefulPartitionedCallStatefulPartitionedCall: : : : : :& "
 
_user_specified_nameinputs: : : 
?
?
=__inference_bn0_layer_call_and_return_conditional_losses_6682

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
_output_shapes
: *
value	B
 Z *
dtype0
N
LogicalAnd/yConst*
_output_shapes
: *
value	B
 Z*
dtype0
^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
T0*
is_training( *
epsilon%o?:*
U0J
ConstConst*
_output_shapes
: *
valueB
 *?p}?*
dtype0?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? "
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2$
ReadVariableOp_1ReadVariableOp_12F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp: : :& "
 
_user_specified_nameinputs: : 
?

?
2__inference_BrainDetectionModel_layer_call_fn_6940
input_1"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1statefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8*
Tout
2*+
_gradient_op_typePartitionedCall-6929*'
_output_shapes
:?????????*
Tin
2	**
config_proto

GPU 

CPU2J 8*V
fQRO
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_6928?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*P
_input_shapes?
=:???????????::::::::22
StatefulPartitionedCallStatefulPartitionedCall: : : : : :' #
!
_user_specified_name	input_1: : : 
?
?
"__inference_bn0_layer_call_fn_7216

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4*
Tout
2**
config_proto

GPU 

CPU2J 8*+
_gradient_op_typePartitionedCall-6649*A
_output_shapes/
-:+??????????????????????????? *F
fAR?
=__inference_bn0_layer_call_and_return_conditional_losses_6648*
Tin	
2?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*A
_output_shapes/
-:+??????????????????????????? *
T0"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall: : :& "
 
_user_specified_nameinputs: : 
?
?
$__inference_conv0_layer_call_fn_6546

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2**
config_proto

GPU 

CPU2J 8*A
_output_shapes/
-:+??????????????????????????? *H
fCRA
?__inference_conv0_layer_call_and_return_conditional_losses_6535*
Tout
2*+
_gradient_op_typePartitionedCall-6541?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? "
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
?
?
"__inference_bn0_layer_call_fn_7292

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4*F
fAR?
=__inference_bn0_layer_call_and_return_conditional_losses_6767*
Tin	
2*
Tout
2*+
_gradient_op_typePartitionedCall-6792**
config_proto

GPU 

CPU2J 8*1
_output_shapes
:??????????? ?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:??????????? "
identityIdentity:output:0*@
_input_shapes/
-:??????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall: : :& "
 
_user_specified_nameinputs: : 
?g
?
 __inference__traced_restore_7540
file_prefix!
assignvariableop_conv0_kernel!
assignvariableop_1_conv0_bias 
assignvariableop_2_bn0_gamma
assignvariableop_3_bn0_beta&
"assignvariableop_4_bn0_moving_mean*
&assignvariableop_5_bn0_moving_variance 
assignvariableop_6_fc_kernel
assignvariableop_7_fc_bias 
assignvariableop_8_adam_iter"
assignvariableop_9_adam_beta_1#
assignvariableop_10_adam_beta_2"
assignvariableop_11_adam_decay*
&assignvariableop_12_adam_learning_rate
assignvariableop_13_total
assignvariableop_14_count+
'assignvariableop_15_adam_conv0_kernel_m)
%assignvariableop_16_adam_conv0_bias_m(
$assignvariableop_17_adam_bn0_gamma_m'
#assignvariableop_18_adam_bn0_beta_m(
$assignvariableop_19_adam_fc_kernel_m&
"assignvariableop_20_adam_fc_bias_m+
'assignvariableop_21_adam_conv0_kernel_v)
%assignvariableop_22_adam_conv0_bias_v(
$assignvariableop_23_adam_bn0_gamma_v'
#assignvariableop_24_adam_bn0_beta_v(
$assignvariableop_25_adam_fc_kernel_v&
"assignvariableop_26_adam_fc_bias_v
identity_28??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?	RestoreV2?RestoreV2_1?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2	L
IdentityIdentityRestoreV2:tensors:0*
T0*
_output_shapes
:y
AssignVariableOpAssignVariableOpassignvariableop_conv0_kernelIdentity:output:0*
_output_shapes
 *
dtype0N

Identity_1IdentityRestoreV2:tensors:1*
_output_shapes
:*
T0}
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv0_biasIdentity_1:output:0*
_output_shapes
 *
dtype0N

Identity_2IdentityRestoreV2:tensors:2*
_output_shapes
:*
T0|
AssignVariableOp_2AssignVariableOpassignvariableop_2_bn0_gammaIdentity_2:output:0*
_output_shapes
 *
dtype0N

Identity_3IdentityRestoreV2:tensors:3*
T0*
_output_shapes
:{
AssignVariableOp_3AssignVariableOpassignvariableop_3_bn0_betaIdentity_3:output:0*
_output_shapes
 *
dtype0N

Identity_4IdentityRestoreV2:tensors:4*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_bn0_moving_meanIdentity_4:output:0*
_output_shapes
 *
dtype0N

Identity_5IdentityRestoreV2:tensors:5*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp&assignvariableop_5_bn0_moving_varianceIdentity_5:output:0*
_output_shapes
 *
dtype0N

Identity_6IdentityRestoreV2:tensors:6*
_output_shapes
:*
T0|
AssignVariableOp_6AssignVariableOpassignvariableop_6_fc_kernelIdentity_6:output:0*
_output_shapes
 *
dtype0N

Identity_7IdentityRestoreV2:tensors:7*
_output_shapes
:*
T0z
AssignVariableOp_7AssignVariableOpassignvariableop_7_fc_biasIdentity_7:output:0*
_output_shapes
 *
dtype0N

Identity_8IdentityRestoreV2:tensors:8*
T0	*
_output_shapes
:|
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0*
_output_shapes
 *
dtype0	N

Identity_9IdentityRestoreV2:tensors:9*
T0*
_output_shapes
:~
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0*
_output_shapes
 *
dtype0P
Identity_10IdentityRestoreV2:tensors:10*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0*
_output_shapes
 *
dtype0P
Identity_11IdentityRestoreV2:tensors:11*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0*
_output_shapes
 *
dtype0P
Identity_12IdentityRestoreV2:tensors:12*
_output_shapes
:*
T0?
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0*
_output_shapes
 *
dtype0P
Identity_13IdentityRestoreV2:tensors:13*
_output_shapes
:*
T0{
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0*
_output_shapes
 *
dtype0P
Identity_14IdentityRestoreV2:tensors:14*
_output_shapes
:*
T0{
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0*
_output_shapes
 *
dtype0P
Identity_15IdentityRestoreV2:tensors:15*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp'assignvariableop_15_adam_conv0_kernel_mIdentity_15:output:0*
_output_shapes
 *
dtype0P
Identity_16IdentityRestoreV2:tensors:16*
_output_shapes
:*
T0?
AssignVariableOp_16AssignVariableOp%assignvariableop_16_adam_conv0_bias_mIdentity_16:output:0*
_output_shapes
 *
dtype0P
Identity_17IdentityRestoreV2:tensors:17*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp$assignvariableop_17_adam_bn0_gamma_mIdentity_17:output:0*
_output_shapes
 *
dtype0P
Identity_18IdentityRestoreV2:tensors:18*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp#assignvariableop_18_adam_bn0_beta_mIdentity_18:output:0*
_output_shapes
 *
dtype0P
Identity_19IdentityRestoreV2:tensors:19*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp$assignvariableop_19_adam_fc_kernel_mIdentity_19:output:0*
_output_shapes
 *
dtype0P
Identity_20IdentityRestoreV2:tensors:20*
_output_shapes
:*
T0?
AssignVariableOp_20AssignVariableOp"assignvariableop_20_adam_fc_bias_mIdentity_20:output:0*
_output_shapes
 *
dtype0P
Identity_21IdentityRestoreV2:tensors:21*
_output_shapes
:*
T0?
AssignVariableOp_21AssignVariableOp'assignvariableop_21_adam_conv0_kernel_vIdentity_21:output:0*
_output_shapes
 *
dtype0P
Identity_22IdentityRestoreV2:tensors:22*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp%assignvariableop_22_adam_conv0_bias_vIdentity_22:output:0*
_output_shapes
 *
dtype0P
Identity_23IdentityRestoreV2:tensors:23*
_output_shapes
:*
T0?
AssignVariableOp_23AssignVariableOp$assignvariableop_23_adam_bn0_gamma_vIdentity_23:output:0*
_output_shapes
 *
dtype0P
Identity_24IdentityRestoreV2:tensors:24*
_output_shapes
:*
T0?
AssignVariableOp_24AssignVariableOp#assignvariableop_24_adam_bn0_beta_vIdentity_24:output:0*
_output_shapes
 *
dtype0P
Identity_25IdentityRestoreV2:tensors:25*
_output_shapes
:*
T0?
AssignVariableOp_25AssignVariableOp$assignvariableop_25_adam_fc_kernel_vIdentity_25:output:0*
_output_shapes
 *
dtype0P
Identity_26IdentityRestoreV2:tensors:26*
_output_shapes
:*
T0?
AssignVariableOp_26AssignVariableOp"assignvariableop_26_adam_fc_bias_vIdentity_26:output:0*
_output_shapes
 *
dtype0?
RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH*
dtype0t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0?
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"/device:CPU:0*
_output_shapes
:*
dtypes
21
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
_output_shapes
: *
T0?
Identity_28IdentityIdentity_27:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9
^RestoreV2^RestoreV2_1*
_output_shapes
: *
T0"#
identity_28Identity_28:output:0*?
_input_shapesp
n: :::::::::::::::::::::::::::2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92
	RestoreV2	RestoreV22*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112
RestoreV2_1RestoreV2_12*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_19AssignVariableOp_192*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262$
AssignVariableOpAssignVariableOp: : : : : :	 : : : : :+ '
%
_user_specified_namefile_prefix: : : : : : : : : : : : : : : : :
 
?9
?
__inference__wrapped_model_6504
input_1<
8braindetectionmodel_conv0_conv2d_readvariableop_resource=
9braindetectionmodel_conv0_biasadd_readvariableop_resource3
/braindetectionmodel_bn0_readvariableop_resource5
1braindetectionmodel_bn0_readvariableop_1_resourceD
@braindetectionmodel_bn0_fusedbatchnormv3_readvariableop_resourceF
Bbraindetectionmodel_bn0_fusedbatchnormv3_readvariableop_1_resource9
5braindetectionmodel_fc_matmul_readvariableop_resource:
6braindetectionmodel_fc_biasadd_readvariableop_resource
identity??7BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp?9BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1?&BrainDetectionModel/bn0/ReadVariableOp?(BrainDetectionModel/bn0/ReadVariableOp_1?0BrainDetectionModel/conv0/BiasAdd/ReadVariableOp?/BrainDetectionModel/conv0/Conv2D/ReadVariableOp?-BrainDetectionModel/fc/BiasAdd/ReadVariableOp?,BrainDetectionModel/fc/MatMul/ReadVariableOp?
/BrainDetectionModel/zero_padding2d/Pad/paddingsConst*
_output_shapes

:*9
value0B."                             *
dtype0?
&BrainDetectionModel/zero_padding2d/PadPadinput_18BrainDetectionModel/zero_padding2d/Pad/paddings:output:0*1
_output_shapes
:???????????*
T0?
/BrainDetectionModel/conv0/Conv2D/ReadVariableOpReadVariableOp8braindetectionmodel_conv0_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*&
_output_shapes
: ?
 BrainDetectionModel/conv0/Conv2DConv2D/BrainDetectionModel/zero_padding2d/Pad:output:07BrainDetectionModel/conv0/Conv2D/ReadVariableOp:value:0*1
_output_shapes
:??????????? *
paddingVALID*
strides
*
T0?
0BrainDetectionModel/conv0/BiasAdd/ReadVariableOpReadVariableOp9braindetectionmodel_conv0_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
!BrainDetectionModel/conv0/BiasAddBiasAdd)BrainDetectionModel/conv0/Conv2D:output:08BrainDetectionModel/conv0/BiasAdd/ReadVariableOp:value:0*1
_output_shapes
:??????????? *
T0f
$BrainDetectionModel/bn0/LogicalAnd/xConst*
_output_shapes
: *
value	B
 Z *
dtype0
f
$BrainDetectionModel/bn0/LogicalAnd/yConst*
_output_shapes
: *
value	B
 Z*
dtype0
?
"BrainDetectionModel/bn0/LogicalAnd
LogicalAnd-BrainDetectionModel/bn0/LogicalAnd/x:output:0-BrainDetectionModel/bn0/LogicalAnd/y:output:0*
_output_shapes
: ?
&BrainDetectionModel/bn0/ReadVariableOpReadVariableOp/braindetectionmodel_bn0_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
(BrainDetectionModel/bn0/ReadVariableOp_1ReadVariableOp1braindetectionmodel_bn0_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
7BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOpReadVariableOp@braindetectionmodel_bn0_fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
9BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbraindetectionmodel_bn0_fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
(BrainDetectionModel/bn0/FusedBatchNormV3FusedBatchNormV3*BrainDetectionModel/conv0/BiasAdd:output:0.BrainDetectionModel/bn0/ReadVariableOp:value:00BrainDetectionModel/bn0/ReadVariableOp_1:value:0?BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp:value:0ABrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*M
_output_shapes;
9:??????????? : : : : :*
U0*
epsilon%o?:*
is_training( b
BrainDetectionModel/bn0/ConstConst*
_output_shapes
: *
valueB
 *?p}?*
dtype0?
#BrainDetectionModel/activation/ReluRelu,BrainDetectionModel/bn0/FusedBatchNormV3:y:0*1
_output_shapes
:??????????? *
T0?
%BrainDetectionModel/max_pool0/MaxPoolMaxPool1BrainDetectionModel/activation/Relu:activations:0*/
_output_shapes
:?????????77 *
strides
*
paddingVALID*
ksize
?
%BrainDetectionModel/max_pool1/MaxPoolMaxPool.BrainDetectionModel/max_pool0/MaxPool:output:0*/
_output_shapes
:????????? *
paddingVALID*
strides
*
ksize
z
)BrainDetectionModel/flatten/Reshape/shapeConst*
_output_shapes
:*
valueB"????   *
dtype0?
#BrainDetectionModel/flatten/ReshapeReshape.BrainDetectionModel/max_pool1/MaxPool:output:02BrainDetectionModel/flatten/Reshape/shape:output:0*(
_output_shapes
:??????????**
T0?
,BrainDetectionModel/fc/MatMul/ReadVariableOpReadVariableOp5braindetectionmodel_fc_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:	?**
dtype0?
BrainDetectionModel/fc/MatMulMatMul,BrainDetectionModel/flatten/Reshape:output:04BrainDetectionModel/fc/MatMul/ReadVariableOp:value:0*'
_output_shapes
:?????????*
T0?
-BrainDetectionModel/fc/BiasAdd/ReadVariableOpReadVariableOp6braindetectionmodel_fc_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:*
dtype0?
BrainDetectionModel/fc/BiasAddBiasAdd'BrainDetectionModel/fc/MatMul:product:05BrainDetectionModel/fc/BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:?????????*
T0?
BrainDetectionModel/fc/SigmoidSigmoid'BrainDetectionModel/fc/BiasAdd:output:0*'
_output_shapes
:?????????*
T0?
IdentityIdentity"BrainDetectionModel/fc/Sigmoid:y:08^BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp:^BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1'^BrainDetectionModel/bn0/ReadVariableOp)^BrainDetectionModel/bn0/ReadVariableOp_11^BrainDetectionModel/conv0/BiasAdd/ReadVariableOp0^BrainDetectionModel/conv0/Conv2D/ReadVariableOp.^BrainDetectionModel/fc/BiasAdd/ReadVariableOp-^BrainDetectionModel/fc/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*P
_input_shapes?
=:???????????::::::::2P
&BrainDetectionModel/bn0/ReadVariableOp&BrainDetectionModel/bn0/ReadVariableOp2T
(BrainDetectionModel/bn0/ReadVariableOp_1(BrainDetectionModel/bn0/ReadVariableOp_12\
,BrainDetectionModel/fc/MatMul/ReadVariableOp,BrainDetectionModel/fc/MatMul/ReadVariableOp2v
9BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_19BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_12^
-BrainDetectionModel/fc/BiasAdd/ReadVariableOp-BrainDetectionModel/fc/BiasAdd/ReadVariableOp2b
/BrainDetectionModel/conv0/Conv2D/ReadVariableOp/BrainDetectionModel/conv0/Conv2D/ReadVariableOp2r
7BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp7BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp2d
0BrainDetectionModel/conv0/BiasAdd/ReadVariableOp0BrainDetectionModel/conv0/BiasAdd/ReadVariableOp: : : : : :' #
!
_user_specified_name	input_1: : : 
?J
?
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_7067

inputs(
$conv0_conv2d_readvariableop_resource)
%conv0_biasadd_readvariableop_resource
bn0_readvariableop_resource!
bn0_readvariableop_1_resource4
0bn0_assignmovingavg_read_readvariableop_resource6
2bn0_assignmovingavg_1_read_readvariableop_resource%
!fc_matmul_readvariableop_resource&
"fc_biasadd_readvariableop_resource
identity??'bn0/AssignMovingAvg/AssignSubVariableOp?'bn0/AssignMovingAvg/Read/ReadVariableOp?"bn0/AssignMovingAvg/ReadVariableOp?)bn0/AssignMovingAvg_1/AssignSubVariableOp?)bn0/AssignMovingAvg_1/Read/ReadVariableOp?$bn0/AssignMovingAvg_1/ReadVariableOp?bn0/ReadVariableOp?bn0/ReadVariableOp_1?conv0/BiasAdd/ReadVariableOp?conv0/Conv2D/ReadVariableOp?fc/BiasAdd/ReadVariableOp?fc/MatMul/ReadVariableOp?
zero_padding2d/Pad/paddingsConst*9
value0B."                             *
dtype0*
_output_shapes

:?
zero_padding2d/PadPadinputs$zero_padding2d/Pad/paddings:output:0*1
_output_shapes
:???????????*
T0?
conv0/Conv2D/ReadVariableOpReadVariableOp$conv0_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*&
_output_shapes
: *
dtype0?
conv0/Conv2DConv2Dzero_padding2d/Pad:output:0#conv0/Conv2D/ReadVariableOp:value:0*1
_output_shapes
:??????????? *
strides
*
paddingVALID*
T0?
conv0/BiasAdd/ReadVariableOpReadVariableOp%conv0_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
: ?
conv0/BiasAddBiasAddconv0/Conv2D:output:0$conv0/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? R
bn0/LogicalAnd/xConst*
value	B
 Z*
dtype0
*
_output_shapes
: R
bn0/LogicalAnd/yConst*
_output_shapes
: *
value	B
 Z*
dtype0
j
bn0/LogicalAnd
LogicalAndbn0/LogicalAnd/x:output:0bn0/LogicalAnd/y:output:0*
_output_shapes
: ?
bn0/ReadVariableOpReadVariableOpbn0_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
: ?
bn0/ReadVariableOp_1ReadVariableOpbn0_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
: L
	bn0/ConstConst*
valueB *
dtype0*
_output_shapes
: N
bn0/Const_1Const*
valueB *
dtype0*
_output_shapes
: ?
bn0/FusedBatchNormV3FusedBatchNormV3conv0/BiasAdd:output:0bn0/ReadVariableOp:value:0bn0/ReadVariableOp_1:value:0bn0/Const:output:0bn0/Const_1:output:0*
epsilon%o?:*
T0*M
_output_shapes;
9:??????????? : : : : :*
U0P
bn0/Const_2Const*
dtype0*
_output_shapes
: *
valueB
 *?p}??
'bn0/AssignMovingAvg/Read/ReadVariableOpReadVariableOp0bn0_assignmovingavg_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
: ~
bn0/AssignMovingAvg/IdentityIdentity/bn0/AssignMovingAvg/Read/ReadVariableOp:value:0*
_output_shapes
: *
T0?
bn0/AssignMovingAvg/sub/xConst",/job:localhost/replica:0/task:0/device:CPU:0*:
_class0
.,loc:@bn0/AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
: *
valueB
 *  ???
bn0/AssignMovingAvg/subSub"bn0/AssignMovingAvg/sub/x:output:0bn0/Const_2:output:0",/job:localhost/replica:0/task:0/device:CPU:0*:
_class0
.,loc:@bn0/AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: *
T0?
"bn0/AssignMovingAvg/ReadVariableOpReadVariableOp0bn0_assignmovingavg_read_readvariableop_resource(^bn0/AssignMovingAvg/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
bn0/AssignMovingAvg/sub_1Sub*bn0/AssignMovingAvg/ReadVariableOp:value:0!bn0/FusedBatchNormV3:batch_mean:0",/job:localhost/replica:0/task:0/device:CPU:0*:
_class0
.,loc:@bn0/AssignMovingAvg/Read/ReadVariableOp*
T0*
_output_shapes
: ?
bn0/AssignMovingAvg/mulMulbn0/AssignMovingAvg/sub_1:z:0bn0/AssignMovingAvg/sub:z:0",/job:localhost/replica:0/task:0/device:CPU:0*:
_class0
.,loc:@bn0/AssignMovingAvg/Read/ReadVariableOp*
T0*
_output_shapes
: ?
'bn0/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp0bn0_assignmovingavg_read_readvariableop_resourcebn0/AssignMovingAvg/mul:z:0#^bn0/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 *
dtype0*:
_class0
.,loc:@bn0/AssignMovingAvg/Read/ReadVariableOp?
)bn0/AssignMovingAvg_1/Read/ReadVariableOpReadVariableOp2bn0_assignmovingavg_1_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
: ?
bn0/AssignMovingAvg_1/IdentityIdentity1bn0/AssignMovingAvg_1/Read/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
bn0/AssignMovingAvg_1/sub/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
valueB
 *  ??*
dtype0*<
_class2
0.loc:@bn0/AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: ?
bn0/AssignMovingAvg_1/subSub$bn0/AssignMovingAvg_1/sub/x:output:0bn0/Const_2:output:0",/job:localhost/replica:0/task:0/device:CPU:0*<
_class2
0.loc:@bn0/AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: *
T0?
$bn0/AssignMovingAvg_1/ReadVariableOpReadVariableOp2bn0_assignmovingavg_1_read_readvariableop_resource*^bn0/AssignMovingAvg_1/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
: ?
bn0/AssignMovingAvg_1/sub_1Sub,bn0/AssignMovingAvg_1/ReadVariableOp:value:0%bn0/FusedBatchNormV3:batch_variance:0",/job:localhost/replica:0/task:0/device:CPU:0*<
_class2
0.loc:@bn0/AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: *
T0?
bn0/AssignMovingAvg_1/mulMulbn0/AssignMovingAvg_1/sub_1:z:0bn0/AssignMovingAvg_1/sub:z:0",/job:localhost/replica:0/task:0/device:CPU:0*<
_class2
0.loc:@bn0/AssignMovingAvg_1/Read/ReadVariableOp*
T0*
_output_shapes
: ?
)bn0/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp2bn0_assignmovingavg_1_read_readvariableop_resourcebn0/AssignMovingAvg_1/mul:z:0%^bn0/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*<
_class2
0.loc:@bn0/AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
 m
activation/ReluRelubn0/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:??????????? ?
max_pool0/MaxPoolMaxPoolactivation/Relu:activations:0*
paddingVALID*
strides
*
ksize
*/
_output_shapes
:?????????77 ?
max_pool1/MaxPoolMaxPoolmax_pool0/MaxPool:output:0*
paddingVALID*
ksize
*/
_output_shapes
:????????? *
strides
f
flatten/Reshape/shapeConst*
valueB"????   *
dtype0*
_output_shapes
:?
flatten/ReshapeReshapemax_pool1/MaxPool:output:0flatten/Reshape/shape:output:0*(
_output_shapes
:??????????**
T0?
fc/MatMul/ReadVariableOpReadVariableOp!fc_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:	?*?
	fc/MatMulMatMulflatten/Reshape:output:0 fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
fc/BiasAdd/ReadVariableOpReadVariableOp"fc_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:

fc/BiasAddBiasAddfc/MatMul:product:0!fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????\

fc/SigmoidSigmoidfc/BiasAdd:output:0*'
_output_shapes
:?????????*
T0?
IdentityIdentityfc/Sigmoid:y:0(^bn0/AssignMovingAvg/AssignSubVariableOp(^bn0/AssignMovingAvg/Read/ReadVariableOp#^bn0/AssignMovingAvg/ReadVariableOp*^bn0/AssignMovingAvg_1/AssignSubVariableOp*^bn0/AssignMovingAvg_1/Read/ReadVariableOp%^bn0/AssignMovingAvg_1/ReadVariableOp^bn0/ReadVariableOp^bn0/ReadVariableOp_1^conv0/BiasAdd/ReadVariableOp^conv0/Conv2D/ReadVariableOp^fc/BiasAdd/ReadVariableOp^fc/MatMul/ReadVariableOp*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*P
_input_shapes?
=:???????????::::::::2,
bn0/ReadVariableOp_1bn0/ReadVariableOp_12<
conv0/BiasAdd/ReadVariableOpconv0/BiasAdd/ReadVariableOp2V
)bn0/AssignMovingAvg_1/Read/ReadVariableOp)bn0/AssignMovingAvg_1/Read/ReadVariableOp2R
'bn0/AssignMovingAvg/Read/ReadVariableOp'bn0/AssignMovingAvg/Read/ReadVariableOp2L
$bn0/AssignMovingAvg_1/ReadVariableOp$bn0/AssignMovingAvg_1/ReadVariableOp24
fc/MatMul/ReadVariableOpfc/MatMul/ReadVariableOp2:
conv0/Conv2D/ReadVariableOpconv0/Conv2D/ReadVariableOp2(
bn0/ReadVariableOpbn0/ReadVariableOp26
fc/BiasAdd/ReadVariableOpfc/BiasAdd/ReadVariableOp2V
)bn0/AssignMovingAvg_1/AssignSubVariableOp)bn0/AssignMovingAvg_1/AssignSubVariableOp2R
'bn0/AssignMovingAvg/AssignSubVariableOp'bn0/AssignMovingAvg/AssignSubVariableOp2H
"bn0/AssignMovingAvg/ReadVariableOp"bn0/AssignMovingAvg/ReadVariableOp: : : : : :& "
 
_user_specified_nameinputs: : : 
?8
?

__inference__traced_save_7446
file_prefix+
'savev2_conv0_kernel_read_readvariableop)
%savev2_conv0_bias_read_readvariableop(
$savev2_bn0_gamma_read_readvariableop'
#savev2_bn0_beta_read_readvariableop.
*savev2_bn0_moving_mean_read_readvariableop2
.savev2_bn0_moving_variance_read_readvariableop(
$savev2_fc_kernel_read_readvariableop&
"savev2_fc_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop2
.savev2_adam_conv0_kernel_m_read_readvariableop0
,savev2_adam_conv0_bias_m_read_readvariableop/
+savev2_adam_bn0_gamma_m_read_readvariableop.
*savev2_adam_bn0_beta_m_read_readvariableop/
+savev2_adam_fc_kernel_m_read_readvariableop-
)savev2_adam_fc_bias_m_read_readvariableop2
.savev2_adam_conv0_kernel_v_read_readvariableop0
,savev2_adam_conv0_bias_v_read_readvariableop/
+savev2_adam_bn0_gamma_v_read_readvariableop.
*savev2_adam_bn0_beta_v_read_readvariableop/
+savev2_adam_fc_kernel_v_read_readvariableop-
)savev2_adam_fc_bias_v_read_readvariableop
savev2_1_const

identity_1??MergeV2Checkpoints?SaveV2?SaveV2_1?
StringJoin/inputs_1Const"/device:CPU:0*
_output_shapes
: *<
value3B1 B+_temp_d5cf8eeaf2684b3b866f439860a0e439/part*
dtype0s

StringJoin
StringJoinfile_prefixStringJoin/inputs_1:output:0"/device:CPU:0*
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
value	B :*
dtype0f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_conv0_kernel_read_readvariableop%savev2_conv0_bias_read_readvariableop$savev2_bn0_gamma_read_readvariableop#savev2_bn0_beta_read_readvariableop*savev2_bn0_moving_mean_read_readvariableop.savev2_bn0_moving_variance_read_readvariableop$savev2_fc_kernel_read_readvariableop"savev2_fc_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop.savev2_adam_conv0_kernel_m_read_readvariableop,savev2_adam_conv0_bias_m_read_readvariableop+savev2_adam_bn0_gamma_m_read_readvariableop*savev2_adam_bn0_beta_m_read_readvariableop+savev2_adam_fc_kernel_m_read_readvariableop)savev2_adam_fc_bias_m_read_readvariableop.savev2_adam_conv0_kernel_v_read_readvariableop,savev2_adam_conv0_bias_v_read_readvariableop+savev2_adam_bn0_gamma_v_read_readvariableop*savev2_adam_bn0_beta_v_read_readvariableop+savev2_adam_fc_kernel_v_read_readvariableop)savev2_adam_fc_bias_v_read_readvariableop"/device:CPU:0*)
dtypes
2	*
_output_shapes
 h
ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0?
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPHq
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0?
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"/device:CPU:0*
_output_shapes
 *
dtypes
2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
_output_shapes
:*
T0*
N?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
_output_shapes
: *
T0s

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
_output_shapes
: *
T0"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : : :	?*:: : : : : : : : : : : :	?*:: : : : :	?*:: 2
SaveV2SaveV22(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2_1SaveV2_1: : : : : :	 : : : : :+ '
%
_user_specified_namefile_prefix: : : : : : : : : : : : : : : : : :
 
?
?
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_6905
input_1(
$conv0_statefulpartitionedcall_args_1(
$conv0_statefulpartitionedcall_args_2&
"bn0_statefulpartitionedcall_args_1&
"bn0_statefulpartitionedcall_args_2&
"bn0_statefulpartitionedcall_args_3&
"bn0_statefulpartitionedcall_args_4%
!fc_statefulpartitionedcall_args_1%
!fc_statefulpartitionedcall_args_2
identity??bn0/StatefulPartitionedCall?conv0/StatefulPartitionedCall?fc/StatefulPartitionedCall?
zero_padding2d/PartitionedCallPartitionedCallinput_1*
Tout
2*+
_gradient_op_typePartitionedCall-6519*1
_output_shapes
:???????????*
Tin
2**
config_proto

GPU 

CPU2J 8*Q
fLRJ
H__inference_zero_padding2d_layer_call_and_return_conditional_losses_6513?
conv0/StatefulPartitionedCallStatefulPartitionedCall'zero_padding2d/PartitionedCall:output:0$conv0_statefulpartitionedcall_args_1$conv0_statefulpartitionedcall_args_2*+
_gradient_op_typePartitionedCall-6541*
Tin
2**
config_proto

GPU 

CPU2J 8*1
_output_shapes
:??????????? *H
fCRA
?__inference_conv0_layer_call_and_return_conditional_losses_6535*
Tout
2?
bn0/StatefulPartitionedCallStatefulPartitionedCall&conv0/StatefulPartitionedCall:output:0"bn0_statefulpartitionedcall_args_1"bn0_statefulpartitionedcall_args_2"bn0_statefulpartitionedcall_args_3"bn0_statefulpartitionedcall_args_4**
config_proto

GPU 

CPU2J 8*F
fAR?
=__inference_bn0_layer_call_and_return_conditional_losses_6789*1
_output_shapes
:??????????? *
Tin	
2*
Tout
2*+
_gradient_op_typePartitionedCall-6802?
activation/PartitionedCallPartitionedCall$bn0/StatefulPartitionedCall:output:0*M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_6820**
config_proto

GPU 

CPU2J 8*
Tout
2*
Tin
2*+
_gradient_op_typePartitionedCall-6826*1
_output_shapes
:??????????? ?
max_pool0/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0**
config_proto

GPU 

CPU2J 8*L
fGRE
C__inference_max_pool0_layer_call_and_return_conditional_losses_6696*/
_output_shapes
:?????????77 *
Tout
2*
Tin
2*+
_gradient_op_typePartitionedCall-6702?
max_pool1/PartitionedCallPartitionedCall"max_pool0/PartitionedCall:output:0*+
_gradient_op_typePartitionedCall-6719*
Tin
2**
config_proto

GPU 

CPU2J 8*/
_output_shapes
:????????? *L
fGRE
C__inference_max_pool1_layer_call_and_return_conditional_losses_6713*
Tout
2?
flatten/PartitionedCallPartitionedCall"max_pool1/PartitionedCall:output:0**
config_proto

GPU 

CPU2J 8*J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_6841*(
_output_shapes
:??????????**
Tout
2*
Tin
2*+
_gradient_op_typePartitionedCall-6847?
fc/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0!fc_statefulpartitionedcall_args_1!fc_statefulpartitionedcall_args_2*E
f@R>
<__inference_fc_layer_call_and_return_conditional_losses_6865*+
_gradient_op_typePartitionedCall-6871**
config_proto

GPU 

CPU2J 8*'
_output_shapes
:?????????*
Tin
2*
Tout
2?
IdentityIdentity#fc/StatefulPartitionedCall:output:0^bn0/StatefulPartitionedCall^conv0/StatefulPartitionedCall^fc/StatefulPartitionedCall*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*P
_input_shapes?
=:???????????::::::::2:
bn0/StatefulPartitionedCallbn0/StatefulPartitionedCall28
fc/StatefulPartitionedCallfc/StatefulPartitionedCall2>
conv0/StatefulPartitionedCallconv0/StatefulPartitionedCall: : : : : :' #
!
_user_specified_name	input_1: : : 
?
?
"__inference_bn0_layer_call_fn_7225

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4*+
_gradient_op_typePartitionedCall-6683**
config_proto

GPU 

CPU2J 8*
Tin	
2*A
_output_shapes/
-:+??????????????????????????? *F
fAR?
=__inference_bn0_layer_call_and_return_conditional_losses_6682*
Tout
2?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? "
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall: : :& "
 
_user_specified_nameinputs: : 
?
?
=__inference_bn0_layer_call_and_return_conditional_losses_7283

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
_output_shapes
: *
value	B
 Z *
dtype0
N
LogicalAnd/yConst*
_output_shapes
: *
value	B
 Z*
dtype0
^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
: ?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
epsilon%o?:*
T0*M
_output_shapes;
9:??????????? : : : : :*
is_training( *
U0J
ConstConst*
dtype0*
_output_shapes
: *
valueB
 *?p}??
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*1
_output_shapes
:??????????? *
T0"
identityIdentity:output:0*@
_input_shapes/
-:??????????? ::::2$
ReadVariableOp_1ReadVariableOp_12F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp: : :& "
 
_user_specified_nameinputs: : 
?*
?
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_7109

inputs(
$conv0_conv2d_readvariableop_resource)
%conv0_biasadd_readvariableop_resource
bn0_readvariableop_resource!
bn0_readvariableop_1_resource0
,bn0_fusedbatchnormv3_readvariableop_resource2
.bn0_fusedbatchnormv3_readvariableop_1_resource%
!fc_matmul_readvariableop_resource&
"fc_biasadd_readvariableop_resource
identity??#bn0/FusedBatchNormV3/ReadVariableOp?%bn0/FusedBatchNormV3/ReadVariableOp_1?bn0/ReadVariableOp?bn0/ReadVariableOp_1?conv0/BiasAdd/ReadVariableOp?conv0/Conv2D/ReadVariableOp?fc/BiasAdd/ReadVariableOp?fc/MatMul/ReadVariableOp?
zero_padding2d/Pad/paddingsConst*
_output_shapes

:*9
value0B."                             *
dtype0?
zero_padding2d/PadPadinputs$zero_padding2d/Pad/paddings:output:0*
T0*1
_output_shapes
:????????????
conv0/Conv2D/ReadVariableOpReadVariableOp$conv0_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*&
_output_shapes
: *
dtype0?
conv0/Conv2DConv2Dzero_padding2d/Pad:output:0#conv0/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
strides
*
paddingVALID?
conv0/BiasAdd/ReadVariableOpReadVariableOp%conv0_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
conv0/BiasAddBiasAddconv0/Conv2D:output:0$conv0/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? R
bn0/LogicalAnd/xConst*
_output_shapes
: *
dtype0
*
value	B
 Z R
bn0/LogicalAnd/yConst*
_output_shapes
: *
dtype0
*
value	B
 Zj
bn0/LogicalAnd
LogicalAndbn0/LogicalAnd/x:output:0bn0/LogicalAnd/y:output:0*
_output_shapes
: ?
bn0/ReadVariableOpReadVariableOpbn0_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
bn0/ReadVariableOp_1ReadVariableOpbn0_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
#bn0/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn0_fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
: ?
%bn0/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn0_fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
bn0/FusedBatchNormV3FusedBatchNormV3conv0/BiasAdd:output:0bn0/ReadVariableOp:value:0bn0/ReadVariableOp_1:value:0+bn0/FusedBatchNormV3/ReadVariableOp:value:0-bn0/FusedBatchNormV3/ReadVariableOp_1:value:0*
U0*M
_output_shapes;
9:??????????? : : : : :*
is_training( *
epsilon%o?:*
T0N
	bn0/ConstConst*
_output_shapes
: *
valueB
 *?p}?*
dtype0m
activation/ReluRelubn0/FusedBatchNormV3:y:0*1
_output_shapes
:??????????? *
T0?
max_pool0/MaxPoolMaxPoolactivation/Relu:activations:0*
ksize
*
strides
*
paddingVALID*/
_output_shapes
:?????????77 ?
max_pool1/MaxPoolMaxPoolmax_pool0/MaxPool:output:0*
ksize
*
strides
*
paddingVALID*/
_output_shapes
:????????? f
flatten/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"????   ?
flatten/ReshapeReshapemax_pool1/MaxPool:output:0flatten/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????*?
fc/MatMul/ReadVariableOpReadVariableOp!fc_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:	?**
dtype0?
	fc/MatMulMatMulflatten/Reshape:output:0 fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
fc/BiasAdd/ReadVariableOpReadVariableOp"fc_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:*
dtype0

fc/BiasAddBiasAddfc/MatMul:product:0!fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????\

fc/SigmoidSigmoidfc/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
IdentityIdentityfc/Sigmoid:y:0$^bn0/FusedBatchNormV3/ReadVariableOp&^bn0/FusedBatchNormV3/ReadVariableOp_1^bn0/ReadVariableOp^bn0/ReadVariableOp_1^conv0/BiasAdd/ReadVariableOp^conv0/Conv2D/ReadVariableOp^fc/BiasAdd/ReadVariableOp^fc/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*P
_input_shapes?
=:???????????::::::::24
fc/MatMul/ReadVariableOpfc/MatMul/ReadVariableOp2,
bn0/ReadVariableOp_1bn0/ReadVariableOp_12:
conv0/Conv2D/ReadVariableOpconv0/Conv2D/ReadVariableOp2J
#bn0/FusedBatchNormV3/ReadVariableOp#bn0/FusedBatchNormV3/ReadVariableOp2(
bn0/ReadVariableOpbn0/ReadVariableOp2N
%bn0/FusedBatchNormV3/ReadVariableOp_1%bn0/FusedBatchNormV3/ReadVariableOp_12<
conv0/BiasAdd/ReadVariableOpconv0/BiasAdd/ReadVariableOp26
fc/BiasAdd/ReadVariableOpfc/BiasAdd/ReadVariableOp: : : : : :& "
 
_user_specified_nameinputs: : : 
?
?
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_6883
input_1(
$conv0_statefulpartitionedcall_args_1(
$conv0_statefulpartitionedcall_args_2&
"bn0_statefulpartitionedcall_args_1&
"bn0_statefulpartitionedcall_args_2&
"bn0_statefulpartitionedcall_args_3&
"bn0_statefulpartitionedcall_args_4%
!fc_statefulpartitionedcall_args_1%
!fc_statefulpartitionedcall_args_2
identity??bn0/StatefulPartitionedCall?conv0/StatefulPartitionedCall?fc/StatefulPartitionedCall?
zero_padding2d/PartitionedCallPartitionedCallinput_1*Q
fLRJ
H__inference_zero_padding2d_layer_call_and_return_conditional_losses_6513**
config_proto

GPU 

CPU2J 8*1
_output_shapes
:???????????*
Tin
2*
Tout
2*+
_gradient_op_typePartitionedCall-6519?
conv0/StatefulPartitionedCallStatefulPartitionedCall'zero_padding2d/PartitionedCall:output:0$conv0_statefulpartitionedcall_args_1$conv0_statefulpartitionedcall_args_2*H
fCRA
?__inference_conv0_layer_call_and_return_conditional_losses_6535**
config_proto

GPU 

CPU2J 8*1
_output_shapes
:??????????? *
Tin
2*
Tout
2*+
_gradient_op_typePartitionedCall-6541?
bn0/StatefulPartitionedCallStatefulPartitionedCall&conv0/StatefulPartitionedCall:output:0"bn0_statefulpartitionedcall_args_1"bn0_statefulpartitionedcall_args_2"bn0_statefulpartitionedcall_args_3"bn0_statefulpartitionedcall_args_4*
Tin	
2*
Tout
2*+
_gradient_op_typePartitionedCall-6792**
config_proto

GPU 

CPU2J 8*F
fAR?
=__inference_bn0_layer_call_and_return_conditional_losses_6767*1
_output_shapes
:??????????? ?
activation/PartitionedCallPartitionedCall$bn0/StatefulPartitionedCall:output:0**
config_proto

GPU 

CPU2J 8*
Tout
2*1
_output_shapes
:??????????? *+
_gradient_op_typePartitionedCall-6826*M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_6820*
Tin
2?
max_pool0/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*L
fGRE
C__inference_max_pool0_layer_call_and_return_conditional_losses_6696*
Tin
2*
Tout
2*+
_gradient_op_typePartitionedCall-6702**
config_proto

GPU 

CPU2J 8*/
_output_shapes
:?????????77 ?
max_pool1/PartitionedCallPartitionedCall"max_pool0/PartitionedCall:output:0*L
fGRE
C__inference_max_pool1_layer_call_and_return_conditional_losses_6713**
config_proto

GPU 

CPU2J 8*/
_output_shapes
:????????? *
Tin
2*
Tout
2*+
_gradient_op_typePartitionedCall-6719?
flatten/PartitionedCallPartitionedCall"max_pool1/PartitionedCall:output:0*
Tin
2*
Tout
2*+
_gradient_op_typePartitionedCall-6847**
config_proto

GPU 

CPU2J 8*J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_6841*(
_output_shapes
:??????????*?
fc/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0!fc_statefulpartitionedcall_args_1!fc_statefulpartitionedcall_args_2*E
f@R>
<__inference_fc_layer_call_and_return_conditional_losses_6865*
Tin
2*
Tout
2*+
_gradient_op_typePartitionedCall-6871**
config_proto

GPU 

CPU2J 8*'
_output_shapes
:??????????
IdentityIdentity#fc/StatefulPartitionedCall:output:0^bn0/StatefulPartitionedCall^conv0/StatefulPartitionedCall^fc/StatefulPartitionedCall*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*P
_input_shapes?
=:???????????::::::::2:
bn0/StatefulPartitionedCallbn0/StatefulPartitionedCall28
fc/StatefulPartitionedCallfc/StatefulPartitionedCall2>
conv0/StatefulPartitionedCallconv0/StatefulPartitionedCall: : : : : :' #
!
_user_specified_name	input_1: : : 
?
?
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_6964

inputs(
$conv0_statefulpartitionedcall_args_1(
$conv0_statefulpartitionedcall_args_2&
"bn0_statefulpartitionedcall_args_1&
"bn0_statefulpartitionedcall_args_2&
"bn0_statefulpartitionedcall_args_3&
"bn0_statefulpartitionedcall_args_4%
!fc_statefulpartitionedcall_args_1%
!fc_statefulpartitionedcall_args_2
identity??bn0/StatefulPartitionedCall?conv0/StatefulPartitionedCall?fc/StatefulPartitionedCall?
zero_padding2d/PartitionedCallPartitionedCallinputs**
config_proto

GPU 

CPU2J 8*
Tout
2*1
_output_shapes
:???????????*+
_gradient_op_typePartitionedCall-6519*Q
fLRJ
H__inference_zero_padding2d_layer_call_and_return_conditional_losses_6513*
Tin
2?
conv0/StatefulPartitionedCallStatefulPartitionedCall'zero_padding2d/PartitionedCall:output:0$conv0_statefulpartitionedcall_args_1$conv0_statefulpartitionedcall_args_2*
Tout
2*1
_output_shapes
:??????????? *+
_gradient_op_typePartitionedCall-6541*
Tin
2**
config_proto

GPU 

CPU2J 8*H
fCRA
?__inference_conv0_layer_call_and_return_conditional_losses_6535?
bn0/StatefulPartitionedCallStatefulPartitionedCall&conv0/StatefulPartitionedCall:output:0"bn0_statefulpartitionedcall_args_1"bn0_statefulpartitionedcall_args_2"bn0_statefulpartitionedcall_args_3"bn0_statefulpartitionedcall_args_4**
config_proto

GPU 

CPU2J 8*
Tout
2*1
_output_shapes
:??????????? *+
_gradient_op_typePartitionedCall-6802*F
fAR?
=__inference_bn0_layer_call_and_return_conditional_losses_6789*
Tin	
2?
activation/PartitionedCallPartitionedCall$bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*+
_gradient_op_typePartitionedCall-6826**
config_proto

GPU 

CPU2J 8*M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_6820*1
_output_shapes
:??????????? ?
max_pool0/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*L
fGRE
C__inference_max_pool0_layer_call_and_return_conditional_losses_6696**
config_proto

GPU 

CPU2J 8*/
_output_shapes
:?????????77 *
Tin
2*
Tout
2*+
_gradient_op_typePartitionedCall-6702?
max_pool1/PartitionedCallPartitionedCall"max_pool0/PartitionedCall:output:0*
Tin
2*
Tout
2*+
_gradient_op_typePartitionedCall-6719*L
fGRE
C__inference_max_pool1_layer_call_and_return_conditional_losses_6713**
config_proto

GPU 

CPU2J 8*/
_output_shapes
:????????? ?
flatten/PartitionedCallPartitionedCall"max_pool1/PartitionedCall:output:0**
config_proto

GPU 

CPU2J 8*
Tout
2*(
_output_shapes
:??????????**+
_gradient_op_typePartitionedCall-6847*J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_6841*
Tin
2?
fc/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0!fc_statefulpartitionedcall_args_1!fc_statefulpartitionedcall_args_2*E
f@R>
<__inference_fc_layer_call_and_return_conditional_losses_6865*
Tin
2*
Tout
2*+
_gradient_op_typePartitionedCall-6871**
config_proto

GPU 

CPU2J 8*'
_output_shapes
:??????????
IdentityIdentity#fc/StatefulPartitionedCall:output:0^bn0/StatefulPartitionedCall^conv0/StatefulPartitionedCall^fc/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*P
_input_shapes?
=:???????????::::::::2:
bn0/StatefulPartitionedCallbn0/StatefulPartitionedCall28
fc/StatefulPartitionedCallfc/StatefulPartitionedCall2>
conv0/StatefulPartitionedCallconv0/StatefulPartitionedCall: : : : : :& "
 
_user_specified_nameinputs: : : 
?/
?
=__inference_bn0_layer_call_and_return_conditional_losses_6767

inputs
readvariableop_resource
readvariableop_1_resource0
,assignmovingavg_read_readvariableop_resource2
.assignmovingavg_1_read_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?#AssignMovingAvg/Read/ReadVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp?%AssignMovingAvg_1/Read/ReadVariableOp? AssignMovingAvg_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
value	B
 Z*
dtype0
*
_output_shapes
: N
LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0H
ConstConst*
_output_shapes
: *
valueB *
dtype0J
Const_1Const*
_output_shapes
: *
valueB *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0Const:output:0Const_1:output:0*
T0*
epsilon%o?:*
U0*M
_output_shapes;
9:??????????? : : : : :L
Const_2Const*
_output_shapes
: *
valueB
 *?p}?*
dtype0?
#AssignMovingAvg/Read/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0v
AssignMovingAvg/IdentityIdentity+AssignMovingAvg/Read/ReadVariableOp:value:0*
_output_shapes
: *
T0?
AssignMovingAvg/sub/xConst",/job:localhost/replica:0/task:0/device:CPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: *
valueB
 *  ??*
dtype0?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: ?
AssignMovingAvg/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource$^AssignMovingAvg/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0",/job:localhost/replica:0/task:0/device:CPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: *
T0?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: ?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp,assignmovingavg_read_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 *
dtype0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp?
%AssignMovingAvg_1/Read/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
: z
AssignMovingAvg_1/IdentityIdentity-AssignMovingAvg_1/Read/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
AssignMovingAvg_1/sub/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
valueB
 *  ??*
dtype0*
_output_shapes
: *8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: *8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource&^AssignMovingAvg_1/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: ?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: *8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp.assignmovingavg_1_read_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
 *
dtype0?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp$^AssignMovingAvg/Read/ReadVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp&^AssignMovingAvg_1/Read/ReadVariableOp!^AssignMovingAvg_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:??????????? "
identityIdentity:output:0*@
_input_shapes/
-:??????????? ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2N
%AssignMovingAvg_1/Read/ReadVariableOp%AssignMovingAvg_1/Read/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2$
ReadVariableOp_1ReadVariableOp_12J
#AssignMovingAvg/Read/ReadVariableOp#AssignMovingAvg/Read/ReadVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp: : :& "
 
_user_specified_nameinputs: : 
?
E
)__inference_activation_layer_call_fn_7311

inputs
identity?
PartitionedCallPartitionedCallinputs*M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_6820**
config_proto

GPU 

CPU2J 8*1
_output_shapes
:??????????? *
Tout
2*
Tin
2*+
_gradient_op_typePartitionedCall-6826j
IdentityIdentityPartitionedCall:output:0*1
_output_shapes
:??????????? *
T0"
identityIdentity:output:0*0
_input_shapes
:??????????? :& "
 
_user_specified_nameinputs
?
`
D__inference_activation_layer_call_and_return_conditional_losses_7306

inputs
identityP
ReluReluinputs*1
_output_shapes
:??????????? *
T0d
IdentityIdentityRelu:activations:0*1
_output_shapes
:??????????? *
T0"
identityIdentity:output:0*0
_input_shapes
:??????????? :& "
 
_user_specified_nameinputs
?
?
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_6928

inputs(
$conv0_statefulpartitionedcall_args_1(
$conv0_statefulpartitionedcall_args_2&
"bn0_statefulpartitionedcall_args_1&
"bn0_statefulpartitionedcall_args_2&
"bn0_statefulpartitionedcall_args_3&
"bn0_statefulpartitionedcall_args_4%
!fc_statefulpartitionedcall_args_1%
!fc_statefulpartitionedcall_args_2
identity??bn0/StatefulPartitionedCall?conv0/StatefulPartitionedCall?fc/StatefulPartitionedCall?
zero_padding2d/PartitionedCallPartitionedCallinputs*
Tout
2**
config_proto

GPU 

CPU2J 8*1
_output_shapes
:???????????*+
_gradient_op_typePartitionedCall-6519*Q
fLRJ
H__inference_zero_padding2d_layer_call_and_return_conditional_losses_6513*
Tin
2?
conv0/StatefulPartitionedCallStatefulPartitionedCall'zero_padding2d/PartitionedCall:output:0$conv0_statefulpartitionedcall_args_1$conv0_statefulpartitionedcall_args_2**
config_proto

GPU 

CPU2J 8*
Tout
2*1
_output_shapes
:??????????? *+
_gradient_op_typePartitionedCall-6541*H
fCRA
?__inference_conv0_layer_call_and_return_conditional_losses_6535*
Tin
2?
bn0/StatefulPartitionedCallStatefulPartitionedCall&conv0/StatefulPartitionedCall:output:0"bn0_statefulpartitionedcall_args_1"bn0_statefulpartitionedcall_args_2"bn0_statefulpartitionedcall_args_3"bn0_statefulpartitionedcall_args_4*
Tout
2**
config_proto

GPU 

CPU2J 8*1
_output_shapes
:??????????? *+
_gradient_op_typePartitionedCall-6792*F
fAR?
=__inference_bn0_layer_call_and_return_conditional_losses_6767*
Tin	
2?
activation/PartitionedCallPartitionedCall$bn0/StatefulPartitionedCall:output:0*
Tout
2**
config_proto

GPU 

CPU2J 8*1
_output_shapes
:??????????? *+
_gradient_op_typePartitionedCall-6826*M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_6820*
Tin
2?
max_pool0/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*L
fGRE
C__inference_max_pool0_layer_call_and_return_conditional_losses_6696*
Tin
2*
Tout
2*+
_gradient_op_typePartitionedCall-6702**
config_proto

GPU 

CPU2J 8*/
_output_shapes
:?????????77 ?
max_pool1/PartitionedCallPartitionedCall"max_pool0/PartitionedCall:output:0*L
fGRE
C__inference_max_pool1_layer_call_and_return_conditional_losses_6713**
config_proto

GPU 

CPU2J 8*/
_output_shapes
:????????? *
Tin
2*
Tout
2*+
_gradient_op_typePartitionedCall-6719?
flatten/PartitionedCallPartitionedCall"max_pool1/PartitionedCall:output:0*J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_6841*
Tout
2*
Tin
2*+
_gradient_op_typePartitionedCall-6847**
config_proto

GPU 

CPU2J 8*(
_output_shapes
:??????????*?
fc/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0!fc_statefulpartitionedcall_args_1!fc_statefulpartitionedcall_args_2*
Tout
2*
Tin
2**
config_proto

GPU 

CPU2J 8*+
_gradient_op_typePartitionedCall-6871*E
f@R>
<__inference_fc_layer_call_and_return_conditional_losses_6865*'
_output_shapes
:??????????
IdentityIdentity#fc/StatefulPartitionedCall:output:0^bn0/StatefulPartitionedCall^conv0/StatefulPartitionedCall^fc/StatefulPartitionedCall*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*P
_input_shapes?
=:???????????::::::::2:
bn0/StatefulPartitionedCallbn0/StatefulPartitionedCall28
fc/StatefulPartitionedCallfc/StatefulPartitionedCall2>
conv0/StatefulPartitionedCallconv0/StatefulPartitionedCall: : : : : :& "
 
_user_specified_nameinputs: : : 
?
d
H__inference_zero_padding2d_layer_call_and_return_conditional_losses_6513

inputs
identity}
Pad/paddingsConst*
dtype0*
_output_shapes

:*9
value0B."                             ~
PadPadinputsPad/paddings:output:0*J
_output_shapes8
6:4????????????????????????????????????*
T0w
IdentityIdentityPad:output:0*J
_output_shapes8
6:4????????????????????????????????????*
T0"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
_
C__inference_max_pool1_layer_call_and_return_conditional_losses_6713

inputs
identity?
MaxPoolMaxPoolinputs*
paddingVALID*
strides
*
ksize
*J
_output_shapes8
6:4????????????????????????????????????{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?

?
2__inference_BrainDetectionModel_layer_call_fn_7122

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8*V
fQRO
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_6928**
config_proto

GPU 

CPU2J 8*
Tout
2*'
_output_shapes
:?????????*+
_gradient_op_typePartitionedCall-6929*
Tin
2	?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*P
_input_shapes?
=:???????????::::::::22
StatefulPartitionedCallStatefulPartitionedCall: : : : : :& "
 
_user_specified_nameinputs: : : 
?
B
&__inference_flatten_layer_call_fn_7322

inputs
identity?
PartitionedCallPartitionedCallinputs*(
_output_shapes
:??????????**
Tout
2*
Tin
2*+
_gradient_op_typePartitionedCall-6847*J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_6841**
config_proto

GPU 

CPU2J 8a
IdentityIdentityPartitionedCall:output:0*(
_output_shapes
:??????????**
T0"
identityIdentity:output:0*.
_input_shapes
:????????? :& "
 
_user_specified_nameinputs
?
D
(__inference_max_pool1_layer_call_fn_6722

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2**
config_proto

GPU 

CPU2J 8*+
_gradient_op_typePartitionedCall-6719*L
fGRE
C__inference_max_pool1_layer_call_and_return_conditional_losses_6713*J
_output_shapes8
6:4?????????????????????????????????????
IdentityIdentityPartitionedCall:output:0*J
_output_shapes8
6:4????????????????????????????????????*
T0"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
]
A__inference_flatten_layer_call_and_return_conditional_losses_6841

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
valueB"????   *
dtype0e
ReshapeReshapeinputsReshape/shape:output:0*(
_output_shapes
:??????????**
T0Y
IdentityIdentityReshape:output:0*(
_output_shapes
:??????????**
T0"
identityIdentity:output:0*.
_input_shapes
:????????? :& "
 
_user_specified_nameinputs
?
?
=__inference_bn0_layer_call_and_return_conditional_losses_6789

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
dtype0
*
_output_shapes
: *
value	B
 Z N
LogicalAnd/yConst*
_output_shapes
: *
dtype0
*
value	B
 Z^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
: ?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
is_training( *
T0*M
_output_shapes;
9:??????????? : : : : :*
U0*
epsilon%o?:J
ConstConst*
_output_shapes
: *
valueB
 *?p}?*
dtype0?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:??????????? "
identityIdentity:output:0*@
_input_shapes/
-:??????????? ::::2$
ReadVariableOp_1ReadVariableOp_12F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp: : :& "
 
_user_specified_nameinputs: : 
?
`
D__inference_activation_layer_call_and_return_conditional_losses_6820

inputs
identityP
ReluReluinputs*1
_output_shapes
:??????????? *
T0d
IdentityIdentityRelu:activations:0*1
_output_shapes
:??????????? *
T0"
identityIdentity:output:0*0
_input_shapes
:??????????? :& "
 
_user_specified_nameinputs
?
I
-__inference_zero_padding2d_layer_call_fn_6522

inputs
identity?
PartitionedCallPartitionedCallinputs*J
_output_shapes8
6:4????????????????????????????????????*
Tout
2*
Tin
2*+
_gradient_op_typePartitionedCall-6519*Q
fLRJ
H__inference_zero_padding2d_layer_call_and_return_conditional_losses_6513**
config_proto

GPU 

CPU2J 8?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?

?
"__inference_signature_wrapper_7009
input_1"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1statefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8*'
_output_shapes
:?????????*
Tout
2*
Tin
2	*+
_gradient_op_typePartitionedCall-6998*(
f#R!
__inference__wrapped_model_6504**
config_proto

GPU 

CPU2J 8?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*P
_input_shapes?
=:???????????::::::::22
StatefulPartitionedCallStatefulPartitionedCall: : : : : :' #
!
_user_specified_name	input_1: : : 
?/
?
=__inference_bn0_layer_call_and_return_conditional_losses_7185

inputs
readvariableop_resource
readvariableop_1_resource0
,assignmovingavg_read_readvariableop_resource2
.assignmovingavg_1_read_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?#AssignMovingAvg/Read/ReadVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp?%AssignMovingAvg_1/Read/ReadVariableOp? AssignMovingAvg_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
value	B
 Z*
dtype0
*
_output_shapes
: N
LogicalAnd/yConst*
_output_shapes
: *
value	B
 Z*
dtype0
^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
: H
ConstConst*
_output_shapes
: *
dtype0*
valueB J
Const_1Const*
_output_shapes
: *
valueB *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0Const:output:0Const_1:output:0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
T0*
U0*
epsilon%o?:L
Const_2Const*
_output_shapes
: *
valueB
 *?p}?*
dtype0?
#AssignMovingAvg/Read/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0v
AssignMovingAvg/IdentityIdentity+AssignMovingAvg/Read/ReadVariableOp:value:0*
_output_shapes
: *
T0?
AssignMovingAvg/sub/xConst",/job:localhost/replica:0/task:0/device:CPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: *
valueB
 *  ??*
dtype0?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp?
AssignMovingAvg/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource$^AssignMovingAvg/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0",/job:localhost/replica:0/task:0/device:CPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: *
T0?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp,assignmovingavg_read_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 *
dtype0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp?
%AssignMovingAvg_1/Read/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0z
AssignMovingAvg_1/IdentityIdentity-AssignMovingAvg_1/Read/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
AssignMovingAvg_1/sub/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: *
valueB
 *  ???
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
T0?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource&^AssignMovingAvg_1/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
: ?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0",/job:localhost/replica:0/task:0/device:CPU:0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
T0*
_output_shapes
: ?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp.assignmovingavg_1_read_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
 ?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp$^AssignMovingAvg/Read/ReadVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp&^AssignMovingAvg_1/Read/ReadVariableOp!^AssignMovingAvg_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? "
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2N
%AssignMovingAvg_1/Read/ReadVariableOp%AssignMovingAvg_1/Read/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2$
ReadVariableOp_1ReadVariableOp_12J
#AssignMovingAvg/Read/ReadVariableOp#AssignMovingAvg/Read/ReadVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp: : :& "
 
_user_specified_nameinputs: : 
?/
?
=__inference_bn0_layer_call_and_return_conditional_losses_7261

inputs
readvariableop_resource
readvariableop_1_resource0
,assignmovingavg_read_readvariableop_resource2
.assignmovingavg_1_read_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?#AssignMovingAvg/Read/ReadVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp?%AssignMovingAvg_1/Read/ReadVariableOp? AssignMovingAvg_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
dtype0
*
_output_shapes
: *
value	B
 ZN
LogicalAnd/yConst*
dtype0
*
_output_shapes
: *
value	B
 Z^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
: ?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
: H
ConstConst*
dtype0*
_output_shapes
: *
valueB J
Const_1Const*
valueB *
dtype0*
_output_shapes
: ?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0Const:output:0Const_1:output:0*
T0*M
_output_shapes;
9:??????????? : : : : :*
U0*
epsilon%o?:L
Const_2Const*
dtype0*
_output_shapes
: *
valueB
 *?p}??
#AssignMovingAvg/Read/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0v
AssignMovingAvg/IdentityIdentity+AssignMovingAvg/Read/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
AssignMovingAvg/sub/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
valueB
 *  ??*
dtype0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: ?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:CPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: *
T0?
AssignMovingAvg/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource$^AssignMovingAvg/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
: ?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0",/job:localhost/replica:0/task:0/device:CPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: *
T0?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0",/job:localhost/replica:0/task:0/device:CPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: *
T0?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp,assignmovingavg_read_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
 ?
%AssignMovingAvg_1/Read/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
: z
AssignMovingAvg_1/IdentityIdentity-AssignMovingAvg_1/Read/ReadVariableOp:value:0*
_output_shapes
: *
T0?
AssignMovingAvg_1/sub/xConst",/job:localhost/replica:0/task:0/device:CPU:0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: *
valueB
 *  ??*
dtype0?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
T0?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource&^AssignMovingAvg_1/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0",/job:localhost/replica:0/task:0/device:CPU:0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: *
T0?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
T0?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp.assignmovingavg_1_read_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 *
dtype0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp$^AssignMovingAvg/Read/ReadVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp&^AssignMovingAvg_1/Read/ReadVariableOp!^AssignMovingAvg_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*1
_output_shapes
:??????????? *
T0"
identityIdentity:output:0*@
_input_shapes/
-:??????????? ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2N
%AssignMovingAvg_1/Read/ReadVariableOp%AssignMovingAvg_1/Read/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2$
ReadVariableOp_1ReadVariableOp_12J
#AssignMovingAvg/Read/ReadVariableOp#AssignMovingAvg/Read/ReadVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp: : :& "
 
_user_specified_nameinputs: : 
?
?
"__inference_bn0_layer_call_fn_7301

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4**
config_proto

GPU 

CPU2J 8*1
_output_shapes
:??????????? *
Tin	
2*
Tout
2*F
fAR?
=__inference_bn0_layer_call_and_return_conditional_losses_6789*+
_gradient_op_typePartitionedCall-6802?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*1
_output_shapes
:??????????? *
T0"
identityIdentity:output:0*@
_input_shapes/
-:??????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall: : :& "
 
_user_specified_nameinputs: : 
?
?
!__inference_fc_layer_call_fn_7340

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*
Tout
2**
config_proto

GPU 

CPU2J 8*E
f@R>
<__inference_fc_layer_call_and_return_conditional_losses_6865*'
_output_shapes
:?????????*+
_gradient_op_typePartitionedCall-6871?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*/
_input_shapes
:??????????*::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
?	
?
<__inference_fc_layer_call_and_return_conditional_losses_7333

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:	?**
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*'
_output_shapes
:?????????*
T0?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:?????????*
T0V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:??????????
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*/
_input_shapes
:??????????*::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
?

?
2__inference_BrainDetectionModel_layer_call_fn_6976
input_1"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1statefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8*
Tout
2*+
_gradient_op_typePartitionedCall-6965*
Tin
2	**
config_proto

GPU 

CPU2J 8*V
fQRO
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_6964*'
_output_shapes
:??????????
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*P
_input_shapes?
=:???????????::::::::22
StatefulPartitionedCallStatefulPartitionedCall: : : : : :' #
!
_user_specified_name	input_1: : : 
?

?
?__inference_conv0_layer_call_and_return_conditional_losses_6535

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*&
_output_shapes
: ?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
paddingVALID*
strides
*
T0*A
_output_shapes/
-:+??????????????????????????? ?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
: ?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*A
_output_shapes/
-:+??????????????????????????? *
T0?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*A
_output_shapes/
-:+??????????????????????????? *
T0"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????::2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
?
?
=__inference_bn0_layer_call_and_return_conditional_losses_7207

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
_output_shapes
: *
dtype0
*
value	B
 Z N
LogicalAnd/yConst*
_output_shapes
: *
value	B
 Z*
dtype0
^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
: ?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
: ?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
: ?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
: ?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
U0*
epsilon%o?:*
is_training( *]
_output_shapesK
I:+??????????????????????????? : : : : :*
T0J
ConstConst*
dtype0*
_output_shapes
: *
valueB
 *?p}??
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*A
_output_shapes/
-:+??????????????????????????? *
T0"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2$
ReadVariableOp_1ReadVariableOp_12F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp: : :& "
 
_user_specified_nameinputs: : 
?
D
(__inference_max_pool0_layer_call_fn_6705

inputs
identity?
PartitionedCallPartitionedCallinputs*J
_output_shapes8
6:4????????????????????????????????????*L
fGRE
C__inference_max_pool0_layer_call_and_return_conditional_losses_6696*
Tout
2**
config_proto

GPU 

CPU2J 8*+
_gradient_op_typePartitionedCall-6702*
Tin
2?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?/
?
=__inference_bn0_layer_call_and_return_conditional_losses_6648

inputs
readvariableop_resource
readvariableop_1_resource0
,assignmovingavg_read_readvariableop_resource2
.assignmovingavg_1_read_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?#AssignMovingAvg/Read/ReadVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp?%AssignMovingAvg_1/Read/ReadVariableOp? AssignMovingAvg_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
value	B
 Z*
dtype0
*
_output_shapes
: N
LogicalAnd/yConst*
dtype0
*
_output_shapes
: *
value	B
 Z^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0H
ConstConst*
_output_shapes
: *
valueB *
dtype0J
Const_1Const*
dtype0*
_output_shapes
: *
valueB ?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0Const:output:0Const_1:output:0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
U0*
epsilon%o?:*
T0L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *?p}??
#AssignMovingAvg/Read/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0v
AssignMovingAvg/IdentityIdentity+AssignMovingAvg/Read/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
AssignMovingAvg/sub/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
valueB
 *  ??*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
: ?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: *6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp?
AssignMovingAvg/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource$^AssignMovingAvg/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: *6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: *6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp,assignmovingavg_read_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
 ?
%AssignMovingAvg_1/Read/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0z
AssignMovingAvg_1/IdentityIdentity-AssignMovingAvg_1/Read/ReadVariableOp:value:0*
_output_shapes
: *
T0?
AssignMovingAvg_1/sub/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
T0?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource&^AssignMovingAvg_1/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: *8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0",/job:localhost/replica:0/task:0/device:CPU:0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
T0*
_output_shapes
: ?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp.assignmovingavg_1_read_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
 *
dtype0?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp$^AssignMovingAvg/Read/ReadVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp&^AssignMovingAvg_1/Read/ReadVariableOp!^AssignMovingAvg_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*A
_output_shapes/
-:+??????????????????????????? *
T0"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2N
%AssignMovingAvg_1/Read/ReadVariableOp%AssignMovingAvg_1/Read/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2$
ReadVariableOp_1ReadVariableOp_12J
#AssignMovingAvg/Read/ReadVariableOp#AssignMovingAvg/Read/ReadVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp: : :& "
 
_user_specified_nameinputs: : 
?
]
A__inference_flatten_layer_call_and_return_conditional_losses_7317

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
valueB"????   *
dtype0e
ReshapeReshapeinputsReshape/shape:output:0*(
_output_shapes
:??????????**
T0Y
IdentityIdentityReshape:output:0*(
_output_shapes
:??????????**
T0"
identityIdentity:output:0*.
_input_shapes
:????????? :& "
 
_user_specified_nameinputs"wL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*?
serving_default?
E
input_1:
serving_default_input_1:0???????????6
fc0
StatefulPartitionedCall:0?????????tensorflow/serving/predict*>
__saved_model_init_op%#
__saved_model_init_op

NoOp:??
?9
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"?6
_tf_keras_model?5{"class_name": "Model", "name": "BrainDetectionModel", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "BrainDetectionModel", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 224, 224, 3], "dtype": "float32", "sparse": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "ZeroPadding2D", "config": {"name": "zero_padding2d", "trainable": true, "dtype": "float32", "padding": [[2, 2], [2, 2]], "data_format": "channels_last"}, "name": "zero_padding2d", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv0", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": [7, 7], "strides": [1, 1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv0", "inbound_nodes": [[["zero_padding2d", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "bn0", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "bn0", "inbound_nodes": [[["conv0", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation", "inbound_nodes": [[["bn0", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pool0", "trainable": true, "dtype": "float32", "pool_size": [4, 4], "padding": "valid", "strides": [4, 4], "data_format": "channels_last"}, "name": "max_pool0", "inbound_nodes": [[["activation", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pool1", "trainable": true, "dtype": "float32", "pool_size": [4, 4], "padding": "valid", "strides": [4, 4], "data_format": "channels_last"}, "name": "max_pool1", "inbound_nodes": [[["max_pool0", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["max_pool1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc", "inbound_nodes": [[["flatten", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["fc", 0, 0]]}, "keras_version": "2.2.4-tf", "backend": "tensorflow", "model_config": {"class_name": "Model", "config": {"name": "BrainDetectionModel", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 224, 224, 3], "dtype": "float32", "sparse": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "ZeroPadding2D", "config": {"name": "zero_padding2d", "trainable": true, "dtype": "float32", "padding": [[2, 2], [2, 2]], "data_format": "channels_last"}, "name": "zero_padding2d", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv0", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": [7, 7], "strides": [1, 1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv0", "inbound_nodes": [[["zero_padding2d", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "bn0", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "bn0", "inbound_nodes": [[["conv0", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation", "inbound_nodes": [[["bn0", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pool0", "trainable": true, "dtype": "float32", "pool_size": [4, 4], "padding": "valid", "strides": [4, 4], "data_format": "channels_last"}, "name": "max_pool0", "inbound_nodes": [[["activation", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pool1", "trainable": true, "dtype": "float32", "pool_size": [4, 4], "padding": "valid", "strides": [4, 4], "data_format": "channels_last"}, "name": "max_pool1", "inbound_nodes": [[["max_pool0", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["max_pool1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc", "inbound_nodes": [[["flatten", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["fc", 0, 0]]}}, "training_config": {"loss": "binary_crossentropy", "metrics": ["accuracy"], "weighted_metrics": null, "sample_weight_mode": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
trainable_variables
	variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "InputLayer", "name": "input_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": [null, 224, 224, 3], "config": {"batch_input_shape": [null, 224, 224, 3], "dtype": "float32", "sparse": false, "name": "input_1"}}
?
trainable_variables
	variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "ZeroPadding2D", "name": "zero_padding2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "zero_padding2d", "trainable": true, "dtype": "float32", "padding": [[2, 2], [2, 2]], "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "conv0", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": [7, 7], "strides": [1, 1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 3}}}}
?
axis
	gamma
 beta
!moving_mean
"moving_variance
#trainable_variables
$	variables
%regularization_losses
&	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "bn0", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "bn0", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}}}
?
'trainable_variables
(	variables
)regularization_losses
*	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "activation", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
+trainable_variables
,	variables
-regularization_losses
.	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pool0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "max_pool0", "trainable": true, "dtype": "float32", "pool_size": [4, 4], "padding": "valid", "strides": [4, 4], "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
/trainable_variables
0	variables
1regularization_losses
2	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pool1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "max_pool1", "trainable": true, "dtype": "float32", "pool_size": [4, 4], "padding": "valid", "strides": [4, 4], "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
3trainable_variables
4	variables
5regularization_losses
6	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

7kernel
8bias
9trainable_variables
:	variables
;regularization_losses
<	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "fc", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "fc", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 5408}}}}
?
=iter

>beta_1

?beta_2
	@decay
Alearning_ratemvmwmx my7mz8m{v|v}v~ v7v?8v?"
	optimizer
X
0
1
2
 3
!4
"5
76
87"
trackable_list_wrapper
J
0
1
2
 3
74
85"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
trainable_variables
Blayer_regularization_losses
regularization_losses
Cnon_trainable_variables

Dlayers
Emetrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
	variables
Flayer_regularization_losses
regularization_losses
Gnon_trainable_variables

Hlayers
Imetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
	variables
Jlayer_regularization_losses
regularization_losses
Knon_trainable_variables

Llayers
Mmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
&:$ 2conv0/kernel
: 2
conv0/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
	variables
Nlayer_regularization_losses
regularization_losses
Onon_trainable_variables

Players
Qmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
: 2	bn0/gamma
: 2bn0/beta
:  (2bn0/moving_mean
#:!  (2bn0/moving_variance
.
0
 1"
trackable_list_wrapper
<
0
 1
!2
"3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
#trainable_variables
$	variables
Rlayer_regularization_losses
%regularization_losses
Snon_trainable_variables

Tlayers
Umetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
'trainable_variables
(	variables
Vlayer_regularization_losses
)regularization_losses
Wnon_trainable_variables

Xlayers
Ymetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
+trainable_variables
,	variables
Zlayer_regularization_losses
-regularization_losses
[non_trainable_variables

\layers
]metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
/trainable_variables
0	variables
^layer_regularization_losses
1regularization_losses
_non_trainable_variables

`layers
ametrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
3trainable_variables
4	variables
blayer_regularization_losses
5regularization_losses
cnon_trainable_variables

dlayers
emetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	?*2	fc/kernel
:2fc/bias
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
?
9trainable_variables
:	variables
flayer_regularization_losses
;regularization_losses
gnon_trainable_variables

hlayers
imetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
'
j0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	ktotal
	lcount
m
_fn_kwargs
ntrainable_variables
o	variables
pregularization_losses
q	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MeanMetricWrapper", "name": "accuracy", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "accuracy", "dtype": "float32"}}
:  (2total
:  (2count
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
k0
l1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
ntrainable_variables
o	variables
rlayer_regularization_losses
pregularization_losses
snon_trainable_variables

tlayers
umetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
k0
l1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
+:) 2Adam/conv0/kernel/m
: 2Adam/conv0/bias/m
: 2Adam/bn0/gamma/m
: 2Adam/bn0/beta/m
!:	?*2Adam/fc/kernel/m
:2Adam/fc/bias/m
+:) 2Adam/conv0/kernel/v
: 2Adam/conv0/bias/v
: 2Adam/bn0/gamma/v
: 2Adam/bn0/beta/v
!:	?*2Adam/fc/kernel/v
:2Adam/fc/bias/v
?2?
2__inference_BrainDetectionModel_layer_call_fn_7122
2__inference_BrainDetectionModel_layer_call_fn_6976
2__inference_BrainDetectionModel_layer_call_fn_7135
2__inference_BrainDetectionModel_layer_call_fn_6940?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_7067
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_6883
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_7109
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_6905?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
__inference__wrapped_model_6504?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *0?-
+?(
input_1???????????
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
-__inference_zero_padding2d_layer_call_fn_6522?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
H__inference_zero_padding2d_layer_call_and_return_conditional_losses_6513?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
$__inference_conv0_layer_call_fn_6546?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????
?2?
?__inference_conv0_layer_call_and_return_conditional_losses_6535?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????
?2?
"__inference_bn0_layer_call_fn_7225
"__inference_bn0_layer_call_fn_7301
"__inference_bn0_layer_call_fn_7292
"__inference_bn0_layer_call_fn_7216?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
=__inference_bn0_layer_call_and_return_conditional_losses_7185
=__inference_bn0_layer_call_and_return_conditional_losses_7207
=__inference_bn0_layer_call_and_return_conditional_losses_7261
=__inference_bn0_layer_call_and_return_conditional_losses_7283?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_activation_layer_call_fn_7311?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_activation_layer_call_and_return_conditional_losses_7306?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_max_pool0_layer_call_fn_6705?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
C__inference_max_pool0_layer_call_and_return_conditional_losses_6696?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
(__inference_max_pool1_layer_call_fn_6722?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
C__inference_max_pool1_layer_call_and_return_conditional_losses_6713?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
&__inference_flatten_layer_call_fn_7322?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_flatten_layer_call_and_return_conditional_losses_7317?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
!__inference_fc_layer_call_fn_7340?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
<__inference_fc_layer_call_and_return_conditional_losses_7333?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
1B/
"__inference_signature_wrapper_7009input_1
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 ?
?__inference_conv0_layer_call_and_return_conditional_losses_6535?I?F
??<
:?7
inputs+???????????????????????????
? "??<
5?2
0+??????????????????????????? 
? ?
=__inference_bn0_layer_call_and_return_conditional_losses_7207? !"M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
C__inference_max_pool0_layer_call_and_return_conditional_losses_6696?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_6883u !"78B??
8?5
+?(
input_1???????????
p

 
? "%?"
?
0?????????
? ?
(__inference_max_pool0_layer_call_fn_6705?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_BrainDetectionModel_layer_call_fn_6976h !"78B??
8?5
+?(
input_1???????????
p 

 
? "???????????
A__inference_flatten_layer_call_and_return_conditional_losses_7317a7?4
-?*
(?%
inputs????????? 
? "&?#
?
0??????????*
? ?
=__inference_bn0_layer_call_and_return_conditional_losses_7185? !"M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
2__inference_BrainDetectionModel_layer_call_fn_6940h !"78B??
8?5
+?(
input_1???????????
p

 
? "???????????
2__inference_BrainDetectionModel_layer_call_fn_7122g !"78A?>
7?4
*?'
inputs???????????
p

 
? "???????????
<__inference_fc_layer_call_and_return_conditional_losses_7333]780?-
&?#
!?
inputs??????????*
? "%?"
?
0?????????
? ?
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_6905u !"78B??
8?5
+?(
input_1???????????
p 

 
? "%?"
?
0?????????
? ?
"__inference_bn0_layer_call_fn_7216? !"M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
__inference__wrapped_model_6504o !"78:?7
0?-
+?(
input_1???????????
? "'?$
"
fc?
fc??????????
"__inference_bn0_layer_call_fn_7225? !"M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
)__inference_activation_layer_call_fn_7311_9?6
/?,
*?'
inputs??????????? 
? ""???????????? ?
H__inference_zero_padding2d_layer_call_and_return_conditional_losses_6513?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
"__inference_bn0_layer_call_fn_7301i !"=?:
3?0
*?'
inputs??????????? 
p 
? ""???????????? ~
&__inference_flatten_layer_call_fn_7322T7?4
-?*
(?%
inputs????????? 
? "???????????*?
$__inference_conv0_layer_call_fn_6546?I?F
??<
:?7
inputs+???????????????????????????
? "2?/+??????????????????????????? ?
=__inference_bn0_layer_call_and_return_conditional_losses_7283v !"=?:
3?0
*?'
inputs??????????? 
p 
? "/?,
%?"
0??????????? 
? ?
C__inference_max_pool1_layer_call_and_return_conditional_losses_6713?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? u
!__inference_fc_layer_call_fn_7340P780?-
&?#
!?
inputs??????????*
? "???????????
"__inference_bn0_layer_call_fn_7292i !"=?:
3?0
*?'
inputs??????????? 
p
? ""???????????? ?
-__inference_zero_padding2d_layer_call_fn_6522?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_7109t !"78A?>
7?4
*?'
inputs???????????
p 

 
? "%?"
?
0?????????
? ?
D__inference_activation_layer_call_and_return_conditional_losses_7306l9?6
/?,
*?'
inputs??????????? 
? "/?,
%?"
0??????????? 
? ?
=__inference_bn0_layer_call_and_return_conditional_losses_7261v !"=?:
3?0
*?'
inputs??????????? 
p
? "/?,
%?"
0??????????? 
? ?
"__inference_signature_wrapper_7009z !"78E?B
? 
;?8
6
input_1+?(
input_1???????????"'?$
"
fc?
fc??????????
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_7067t !"78A?>
7?4
*?'
inputs???????????
p

 
? "%?"
?
0?????????
? ?
(__inference_max_pool1_layer_call_fn_6722?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_BrainDetectionModel_layer_call_fn_7135g !"78A?>
7?4
*?'
inputs???????????
p 

 
? "??????????