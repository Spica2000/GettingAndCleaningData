library(plyr)

# Download and unzip file
url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
f <- file.path(getwd(), "Dataset.zip")
download.file(url,f)
unzip(zipfile=f)

# Entering the folder name for the data
datafolder <- file.path("UCI HAR Dataset")

# Reading the files to data tables
ActivityTest  <- read.table(file.path(datafolder, "test" , "Y_test.txt" ),header = FALSE)
ActivityTrain <- read.table(file.path(datafolder, "train", "Y_train.txt"),header = FALSE)
SubjectTrain <- read.table(file.path(datafolder, "train", "subject_train.txt"),header = FALSE)
SubjectTest  <- read.table(file.path(datafolder, "test" , "subject_test.txt"),header = FALSE)
FeaturesTest  <- read.table(file.path(datafolder, "test" , "X_test.txt" ),header = FALSE)
FeaturesTrain <- read.table(file.path(datafolder, "train", "X_train.txt"),header = FALSE)

# Merging the training and test sets to one data set

Subject <- rbind(SubjectTrain, SubjectTest)
Activity<- rbind(ActivityTrain, ActivityTest)
Features<- rbind(FeaturesTrain, FeaturesTest)

# Naming of the variables Subject and Activity
names(Subject)<-c("subject")
names(Activity)<- c("activity")

# Loading names of the variables in Features and naming them
FeaturesNames <- read.table(file.path(datafolder, "features.txt"),head=FALSE)
names(Features)<- FeaturesNames$V2

#Merging all data together
SA <- cbind(Subject, Activity)
Data <- cbind(Features, SA)

# Extracting only the measurements on the mean and standard deviation. So we will take names of Features with “mean()” or “std()”

subFeaturesNames<-FeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", FeaturesNames$V2)]

# Subset Data with names selected
selectNames<-c(as.character(subFeaturesNames), "subject", "activity" )
Data<-subset(Data,select=selectNames)

# Reading and setting Activity labels

activityLabels <- read.table(file.path(datafolder, "activity_labels.txt"),header = FALSE)
Data$activity <- factor(Data$activity, levels = activityLabels[,1], labels = activityLabels[,2])

# Setting discriptive names
names(Data)<-gsub("^t", "time", names(Data))
names(Data)<-gsub("^f", "frequency", names(Data))
names(Data)<-gsub("Acc", "Accelerometer", names(Data))
names(Data)<-gsub("Gyro", "Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))
names(Data)<-gsub("BodyBody", "Body", names(Data))

#Creating another (tidy) data set. We need a 'plyr' package for that 
Data2<-aggregate(. ~subject + activity, Data, mean)
Data2<-Data2[order(Data2$subject,Data2$activity),]
write.table(Data2, file = "tidydata.txt",row.name=FALSE)
