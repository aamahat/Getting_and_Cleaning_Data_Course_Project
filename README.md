##Read Me for Getting and Cleaning Data Course Project

###Project Scope
From the data as avialable at 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, following tasks need to be accomplished.

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

###Project Artifacts

Repo includes the following files:

* `run_Analysis.R` => R script that prepares tidy_data.txt as needed for Project
* `tidy_data.txt` => The output as needed for # 5 in Project Scope
* `CodeBook.md` => Describes the tidy data, it's variables and transformations applied to prepare the data. 
* `README.md` => Read me file detailining the Project Scope & artifacts used

###Implementation Details 

Variables & transformation logic applied to prepare tidy_data.txt

The script `run_analysis.R` contains the details to prepare final data tidy_data.txt. 

* It creates a zipped folder 'dataset.zip' in the working directory & contains downloaded file.
* Zipped file is then unzipped & a folder 'UCI HAR Dataset' is created
* Train & Test datasets are read using the command `read.table`
* The datasets are merged using the command `rbind`
* Mean & standard deviation related measurements are extracted using the command `grep`
* Naming & labelling of variables, activities are done using the command `names` & `gsub`
* Second set as needed to prepare tidy dataset is prepared using the command `cbind`
* Average of each variable w.r.t. each subject & each activity is done using the command `aggregate`
* Aggregated data is sorted on subject & activity using `order`
* And finally, the tidy data is created using the command `write.table`

Following variables are used within `run_analysis.R` - 

* `filename`: name of zipped file
* `actual_file`: unzipped folder
* `subject_train`, `x_train`, `y_train`: contains subject, variable & activity from Train data
* `subject_test`, `x_test`, `y_test`: contains subject, variable & activity from Test data
* `features`: contains features
* `activity`: contains activity labels
* `subject`, `x`, `y`: merged data from Train & Test. x & y also contains the extracted features i.e. mean & standard deviation related measurements 
* `ext_features`: to extract mean & standard deviation related features
* `second_set`: combined data of subject, x & y; source to prepare tidy data
* `tidy_data`: aggregated data containining average of variable for each subject for each activity
