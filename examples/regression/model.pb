
*
xPlaceholder*
dtype0*
shape: 
*
yPlaceholder*
dtype0*
shape: 
B
random_uniform/shapeConst*
dtype0*
valueB:
?
random_uniform/minConst*
dtype0*
valueB
 *  ��
A
random_uniform/rangeConst*
dtype0*
valueB
 *   @
r
random_uniform/RandomUniformRandomUniformrandom_uniform/shape*
dtype0*
seed2 *

seed *
T0
V
random_uniform/mulMulrandom_uniform/RandomUniformrandom_uniform/range*
T0
F
random_uniformAddrandom_uniform/mulrandom_uniform/min*
T0
O
wVariable*
dtype0*
shape:*
	container *
shared_name 
W
w/AssignAssignwrandom_uniform*
validate_shape(*
use_locking(*
T0
6
zerosConst*
dtype0*
valueB*    
O
bVariable*
dtype0*
shape:*
	container *
shared_name 
N
b/AssignAssignbzeros*
validate_shape(*
use_locking(*
T0

mulMulwx*
T0

addAddmulb*
T0

subSubaddy*
T0

SquareSquaresub*
T0

RankRankSquare*
T0
5
range/startConst*
dtype0*
value	B : 
5
range/deltaConst*
dtype0*
value	B :
.
rangeRangerange/startRankrange/delta
5
MeanMeanSquarerange*
T0*
	keep_dims( 
'
gradients/ShapeShapeMean*
T0
<
gradients/ConstConst*
dtype0*
valueB
 *  �?
A
gradients/FillFillgradients/Shapegradients/Const*
T0
3
gradients/Mean_grad/ShapeShapeSquare*
T0
1
gradients/Mean_grad/RankRankSquare*
T0
4
gradients/Mean_grad/Shape_1Shaperange*
T0
I
gradients/Mean_grad/range/startConst*
dtype0*
value	B : 
I
gradients/Mean_grad/range/deltaConst*
dtype0*
value	B :
~
gradients/Mean_grad/rangeRangegradients/Mean_grad/range/startgradients/Mean_grad/Rankgradients/Mean_grad/range/delta
H
gradients/Mean_grad/Fill/valueConst*
dtype0*
value	B :
f
gradients/Mean_grad/FillFillgradients/Mean_grad/Shape_1gradients/Mean_grad/Fill/value*
T0
�
!gradients/Mean_grad/DynamicStitchDynamicStitchgradients/Mean_grad/rangerangegradients/Mean_grad/Shapegradients/Mean_grad/Fill*
T0*
N
e
gradients/Mean_grad/divDivgradients/Mean_grad/Shape!gradients/Mean_grad/DynamicStitch*
T0
b
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/DynamicStitch*
T0
_
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/div*
T0
5
gradients/Mean_grad/Shape_2ShapeSquare*
T0
3
gradients/Mean_grad/Shape_3ShapeMean*
T0
H
gradients/Mean_grad/Rank_1Rankgradients/Mean_grad/Shape_2*
T0
K
!gradients/Mean_grad/range_1/startConst*
dtype0*
value	B : 
K
!gradients/Mean_grad/range_1/deltaConst*
dtype0*
value	B :
�
gradients/Mean_grad/range_1Range!gradients/Mean_grad/range_1/startgradients/Mean_grad/Rank_1!gradients/Mean_grad/range_1/delta
t
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_2gradients/Mean_grad/range_1*
T0*
	keep_dims( 
H
gradients/Mean_grad/Rank_2Rankgradients/Mean_grad/Shape_3*
T0
K
!gradients/Mean_grad/range_2/startConst*
dtype0*
value	B : 
K
!gradients/Mean_grad/range_2/deltaConst*
dtype0*
value	B :
�
gradients/Mean_grad/range_2Range!gradients/Mean_grad/range_2/startgradients/Mean_grad/Rank_2!gradients/Mean_grad/range_2/delta
v
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_3gradients/Mean_grad/range_2*
T0*
	keep_dims( 
_
gradients/Mean_grad/div_1Divgradients/Mean_grad/Prodgradients/Mean_grad/Prod_1*
T0
S
gradients/Mean_grad/CastCastgradients/Mean_grad/div_1*

DstT0*

SrcT0
]
gradients/Mean_grad/div_2Divgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0
H
$gradients/Mean_grad/tuple/group_depsNoOp^gradients/Mean_grad/div_2
�
,gradients/Mean_grad/tuple/control_dependencyIdentitygradients/Mean_grad/div_2%^gradients/Mean_grad/tuple/group_deps*
T0
H
gradients/Square_grad/mul/xConst*
dtype0*
valueB
 *   @
K
gradients/Square_grad/mulMulgradients/Square_grad/mul/xsub*
T0
t
gradients/Square_grad/mul_1Mul,gradients/Mean_grad/tuple/control_dependencygradients/Square_grad/mul*
T0
/
gradients/sub_grad/ShapeShapeadd*
T0
/
gradients/sub_grad/Shape_1Shapey*
T0
w
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1
~
gradients/sub_grad/SumSumgradients/Square_grad/mul_1(gradients/sub_grad/BroadcastGradientArgs*
T0*
	keep_dims( 
`
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0
�
gradients/sub_grad/Sum_1Sumgradients/Square_grad/mul_1*gradients/sub_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( 
@
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0
d
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
�
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0
�
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0
/
gradients/add_grad/ShapeShapemul*
T0
/
gradients/add_grad/Shape_1Shapeb*
T0
w
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1
�
gradients/add_grad/SumSum+gradients/sub_grad/tuple/control_dependency(gradients/add_grad/BroadcastGradientArgs*
T0*
	keep_dims( 
`
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0
�
gradients/add_grad/Sum_1Sum+gradients/sub_grad/tuple/control_dependency*gradients/add_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( 
f
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
�
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0
�
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0
-
gradients/mul_grad/ShapeShapew*
T0
/
gradients/mul_grad/Shape_1Shapex*
T0
w
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1
V
gradients/mul_grad/mulMul+gradients/add_grad/tuple/control_dependencyx*
T0
y
gradients/mul_grad/SumSumgradients/mul_grad/mul(gradients/mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( 
`
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0
X
gradients/mul_grad/mul_1Mulw+gradients/add_grad/tuple/control_dependency*
T0

gradients/mul_grad/Sum_1Sumgradients/mul_grad/mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( 
f
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
�
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0
�
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*
T0
@
train/learning_rateConst*
dtype0*
valueB
 *   ?
�
#train/update_w/ApplyGradientDescentApplyGradientDescentwtrain/learning_rate+gradients/mul_grad/tuple/control_dependency*
use_locking( *
T0
�
#train/update_b/ApplyGradientDescentApplyGradientDescentbtrain/learning_rate-gradients/add_grad/tuple/control_dependency_1*
use_locking( *
T0
Y
trainNoOp$^train/update_w/ApplyGradientDescent$^train/update_b/ApplyGradientDescent
"
initNoOp	^w/Assign	^b/Assign