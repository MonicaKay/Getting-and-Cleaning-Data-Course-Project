#CODEBOOK

##Project Description

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.  The objective is to create one R script called run_analysis.R 

that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


##Data Source:

Raw data was obtained from the UCI WebSite: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


##Information about the Data:

An experiment was completed, with a group of 30 volunteers within the ages of 19-48.  Data was collected from the accelerometers from the Samsung Galaxy S smartphone.  

Each person performed six activities wearing a smartphone on their waist (SITTING, STANDING, LAYING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS).  A total of 561 

time and frequency variables were recorded.  The obtained datasetS were randomly separated into a training and test datasets (70% and 30% respectfully).


##The Data:

testSet: Test set, containing recorded variables

testLabels: Test labels, identifying the activity

trainSet: Training set, containing recorded variables

trainLabels: Training labels, identifying the activity

activityLabels: Links the class labels with their activty name

features: List of all features (time and frequency variables)

testSubject: Identifies the subject who performed the activity

trainSubject: Identifies the subject who performed the activity


##Transformation Details

All files were loaded using read.table().

activityLabels$V2 was coverted to a character vector, then a for loop was used to match the label numbers (in testLabel and trainLabel) and replace with the 

descriptive name.

features$V2 was converted to a character vector and then used to rename the columns to a more descriptive name in the testSet and trainSet dataframes.

Create a trainDF and testDF, using cbind on the ...Subject, ...Label, and ...Set dataframes.  
analysisDF was created using rbind of trainDF and testDF

Column names were changed to descriptive names

Used grepl and regular expressions to extract only the measurements on the mean and standard deviation for each measurement

Reshape the data using melt and dcast.  This wa used to find the average of each variable for each activity and each subject.
