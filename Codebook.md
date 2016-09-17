GETTING AND CLEANING DATA COURSE PROJECT
CODEBOOK


THE DATA:
==================
See README file


THE FILES (raw data):
==================
testSet: Test set, containing recorded variables

testLabels: Test labels, identifying the activity

trainSet: Training set, containing recorded variables

trainLabels: Training labels, identifying the activity

activityLabels: Links the class labels with their activty name

features: List of all features (time and frequency variables)

testSubject: Identifies the subject who performed the activity

trainSubject: Identifies the subject who performed the activity


RAW DATA VARIABLES:
==================
> str(testSet)
'data.frame':	2947 obs. of  561 variables:
 $ V1  : num  0.257 0.286 0.275 0.27 0.275 ...
 $ V2  : num  -0.0233 -0.0132 -0.0261 -0.0326 -0.0278 ...
 $ V3  : num  -0.0147 -0.1191 -0.1182 -0.1175 -0.1295 ...
 $ V4  : num  -0.938 -0.975 -0.994 -0.995 -0.994 ...
 $ V5  : num  -0.92 -0.967 -0.97 -0.973 -0.967 ...
  [list output truncated]

> str(testLabels)
'data.frame':	2947 obs. of  1 variable:
 $ V1: int  5 5 5 5 5 5 5 5 5 5 ...

> str(trainSet)
'data.frame':	7352 obs. of  561 variables:
 $ V1  : num  0.289 0.278 0.28 0.279 0.277 ...
 $ V2  : num  -0.0203 -0.0164 -0.0195 -0.0262 -0.0166 ...
 $ V3  : num  -0.133 -0.124 -0.113 -0.123 -0.115 ...
 $ V4  : num  -0.995 -0.998 -0.995 -0.996 -0.998 ...
 $ V5  : num  -0.983 -0.975 -0.967 -0.983 -0.981 ...

> str(trainLabels)
'data.frame':	7352 obs. of  1 variable:
 $ V1: int  5 5 5 5 5 5 5 5 5 5 ...

> str(activityLabels)
'data.frame':	6 obs. of  2 variables:
 $ V1: int  1 2 3 4 5 6
 $ V2: Factor w/ 6 levels "LAYING","SITTING",..: 4 6 5 2 3 1

> str(features)
'data.frame':	561 obs. of  1 variable:
 $ V2: Factor w/ 477 levels "angle(tBodyAccJerkMean),gravityMean)",..: 243 244 245 250 251 252 237 238 239 240 ...

> str(testSubject)
'data.frame':	2947 obs. of  1 variable:
 $ V1: int  2 2 2 2 2 2 2 2 2 2 ...

> str(trainSubject)
'data.frame':	7352 obs. of  1 variable:
 $ V1: int  1 1 1 1 1 1 1 1 1 1 ...


TRANSFORMATIONS:
==================
See README file
