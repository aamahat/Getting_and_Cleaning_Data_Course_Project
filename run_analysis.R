# downloading zipped file
# a folder "dataset.zip" will be created if it does not exist. The folder will contain the downloaded files
filename <- "./dataset.zip"
if(!file.exists(filename)){
  fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"  
  download.file(fileurl, destfile = filename, mode = "wb")  
}

# script to extract/unzip the zipped files
unzip (filename)

# name of the unzipped folder. This folder contains Test & Train data which will be used throughout this assignment
actual_file <- "UCI HAR Dataset"

# extracting contents from Train repo
# three variables namely subject_train, x_train & y_train will hold values respectively for Train Subject, Train Variable & Train Activity
subject_train <- read.table(paste0(actual_file,"/train/subject_train.txt"))
x_train <- read.table(paste0(actual_file,"/train/X_train.txt"))
y_train <- read.table(paste0(actual_file,"/train/y_train.txt"))


# extracting contents from Test repo
# three variables namely subject_test, x_test & y_test will hold values respectively for Test Subject, Test Variable & Test Activity
subject_test <- read.table(paste0(actual_file,"/test/subject_test.txt"))
x_test <- read.table(paste0(actual_file,"/test/X_test.txt"))
y_test <- read.table(paste0(actual_file,"/test/y_test.txt"))
                                            
# variables "features" & "activity" will contain data from features & activity_labels respectively
features <- read.table(paste0(actual_file,"/features.txt"))
activity <- read.table(paste0(actual_file,"/activity_labels.txt"))

# merging Train & Test data set to create single data set
# subject is for subject data
# x is for variable data
# y is for activity data 
subject <- rbind(subject_train, subject_test)
x <- rbind(x_train, x_test)
y <- rbind(y_train, y_test)

# extracting only the measurements on the mean and standard deviation for each measurement
ext_features <- grep("-(mean|std)\\(\\)",features$V2)
x <- x[,ext_features]
y[,1] <- activity [y[,1],2] 

# naming the activities in the data set with descriptive names
names(y) <- "activity"
names(subject) <- "subject"

# labelling the data set with descriptive variable names
names(x) <- features[ext_features,2]
names(x) <- gsub("mean", "Mean", names(x))
names(x) <- gsub("std", "StdDev", names(x))
names(x) <- gsub("^t", "time", names(x))
names(x) <- gsub("^f", "frequency", names(x))
names(x) <- gsub("Acc", "Accelerometer", names(x))
names(x) <- gsub("Gyro", "Gyroscope", names(x))
names(x) <- gsub("Mag", "Magnitude", names(x))
names(x) <- gsub("BodyBody", "Body", names(x))

# creating a second set which actually is a tidy data set
# tidy_data.txt is the final output which is the average of each variable for each activity and each subject
# results are order w.r.t. subject & activity for each variable
second_set <- cbind(x, y, subject)
tidy_data <- aggregate(. ~subject + activity, second_set, mean)
tidy_data <- tidy_data[order(tidy_data$subject,tidy_data$activity),]
write.table(tidy_data, file = "tidy_data.txt",row.name=FALSE)

