## Download the data for the Project
# Set working directory
setwd("C:/Users/.../Project")

# Create a data file in working directory if one does not already exist
if(!file.exists("data")) { dir.create("data")}

# Save and download URL, list files in directory to ensure creation 
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl, destfile = "./data/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
list.files("./data")

# Unzip the files
unzip(zipfile="./data/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",exdir="./data")
list.files("./data")

# Load data
testSet <- read.table("./data/UCI HAR Dataset/test/X_test.txt", sep = "") 
testLabels <- read.table("./data/UCI HAR Dataset/test/Y_test.txt")
trainSet <- read.table("./data/UCI HAR Dataset/train/X_train.txt", sep = "") 
trainLabels <- read.table("./data/UCI HAR Dataset/train/Y_train.txt")
activityLabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
features <- read.table("./data/UCI HAR Dataset/features.txt", row.names = 1)
testSubject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
trainSubject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

## Use Descriptive Activity Names to Name the Activities in the Data Set
activityLabels$V2 <- as.character(activityLabels$V2)
for (i in 1:nrow(testLabels)){
  for (j in 1:nrow(activityLabels)){
    if (testLabels[i,1] == activityLabels[j,1])
      testLabels[i,1] <- activityLabels[j,2]
  }
}
for (i in 1:nrow(trainLabels)){
  for (j in 1:nrow(activityLabels)){
    if (trainLabels[i,1] == activityLabels[j,1])
      trainLabels[i,1] <- activityLabels[j,2]
  }
}


## Appropriately label the data set with descriptive variable names
# Label testSet and trainSet correctly with features 
features$V2 <- as.character(features$V2)
colnames(testSet) <- features$V2
colnames(trainSet) <- features$V2


## Merge the training and the test sets to create one data set
library(dplyr)
trainDF <- cbind(trainSubject, trainLabels, trainSet) 
testDF <- cbind(testSubject, testLabels, testSet) 

# Merge the test and train datasets together
analysisDF <- rbind(trainDF, testDF)
names(analysisDF)[1] <- "ExperimentSubjectNo."
names(analysisDF)[2] <- "Activity"

## Extracts only the measurements on the mean and standard deviation for each measurement
analysisDF <- analysisDF[ , grepl( "mean|std|ExperimentSubject|Activity" , names( analysisDF ) ) ]


## Find the average of each variable for each activity and each subject.
library(reshape2)
analysisMelt <- melt(analysisDF, id=c("ExperimentSubjectNo.","Activity"), measure.vars = c(3:81,NCOL(analysisDF)))
analysisSummary <- dcast(analysisMelt, ExperimentSubjectNo. + Activity ~ variable, mean)


write.table(analysisSummary, "C:/users/.../Project/analysisSummary.txt", row.name = FALSE)
