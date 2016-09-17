# Getting-and-Cleaning-Data-Course-Project

THE DATA:
=================================
The data comes from the UCI Machine Learning Repository and represents data collected from the accelerometers from the Samsung Galaxy S smartphone.  An experiment was completed, with a group of 30 volunteers within the ages of 19-48.  Each person performed six activities wearing a smartphone on their waist.  A total of 561 time and frequency variables were recorded.  The obtained dataset was randomly separated into a training and test dataset (70% and 30% respectfully).


THE FILES: (raw data)
=================================
testSet: Test set, containing recorded variables;

testLabels: Test labels, identifying the activity;

trainSet: Training set, containing recorded variables;

trainLabels: Training labels, identifying the activity;

activityLabels: Links the class labels with their activty name;

features: List of all features (time and frequency variables);

testSubject: Identifies the subject who performed the activity;

trainSubject: Identifies the subject who performed the activity;


DESCRIPTION OF run-analysis.R: 
=================================
All files were loaded using read.table().

- Uses descriptive activity names to name the activities in the data set 

activityLabels$V2 was coverted to a character vector, then a for loop was used to match the label numbers (in testLabel and trainLabel) and replace with the descriptive name.

- Appropriately label the data set with descriptive variable names 

features$V2 was converted to a character vector and then used to rename the columns to a more descriptive name in the testSet and trainSet dataframes.

- Merge the training and the test sets to create one data set 

Create a trainDF and testDF, using cbind on the ...Subject, ...Label, and ...Set dataframes.  
analysisDF was created using rbind of trainDF and testDF

- Appropriately label the data set with descriptive variable names 

Column names were changed to descriptive names

- Extract only the measurements on the mean and standard deviation for each measurement 

Used grepl and regular expressions to extract only the measurements on the mean and standard deviation for each measurement

- Find the average of each variable foe each activity and each subject 

Reshape the data using dcast.  Used to find the average of each variable for each activity and each subject.  
Note: This may be the narrow format, however this still is a tidy dataset that is appropriate per the instructions for the Project Assignment.
