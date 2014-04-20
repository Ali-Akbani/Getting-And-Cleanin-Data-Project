CodeBook
========================================================

The purpose of this document is to detail the data, transformation, assumptions that were taken during the analysis.

### Environment
* R x64 3.0.2
* R Studio Version 0.98.490
* Windows 7 x64 SP1

### Assumptions
* The analysis will be run under a windows system
* "getdata_projectfiles_UCI HAR Dataset.zip" has been downloaded and extracted
* The working directory is set to the root of the extracted folder e.g `setwd("C:\\Users\\MA250250\\Documents\\Coursera\\Getting and Cleaning Data\\UCI HAR Dataset")`;

### Data
* Based on the recommendations in the read.table documentation, nrows has been specified to manage memory usage. The rows are assumed as following:
 * .\\features.txt has 562 rows
 * .\\train\\y_train.txt has 7353 rows
 * .\\train\\subject_train.txt has 7353 rows
 * .\\train\\X_train.txt has 7353 rows
 * .\\test\\y_test.txt has 2947 rows
 * .\\test\\subject_test.txt has 2947 rows
 * .\\test\\X_test.txt has 2947 rows
* Intermediate tables required for processing have been removed within the program if they are no longer required.
* Data in ".\\train\\Inertial Signals" and ".\\test\\Inertial Signals" has been ignored
* It is assumed that "mean" and "std" of observations refers to columns which have "mean()" and "std()" in the ".\\features.txt"
* It is assumed that the final output required average of the "mean" and "std" columns grouped by activity and then subject number
* Acitvity labels and levels have been picked from ".\\activity_labels.txt"
* The output of analysis is named "Summary_Data" and is placed in the working directory. The format has been kept similar to the input files

### Steps
* Load the feature names to use as variable names
* Load the training data from the ".\\train" folder
 * Load the activity tags for the rows from ".\\train\\y_train.txt"
 * Load the subject tags for the rows from ".\\train\\subject_train.txt"
 * Load the measurements from the ".\\train\\X_train.txt"
 * Combine the activity tags, subject tags, and mean and std measurements into one data set
 * Remove the intermediary data sets from memory
* Load the training data from the ".\\test" folder
 * Load the activity tags for the rows from ".\\test\\y_test.txt"
 * Load the subject tags for the rows from ".\\test\\subject_test.txt"
 * Load the measurements from the ".\\test\\X_test.txt"
 * Combine the activity tags, subject tags, and mean and std measurements into one data set
 * Remove the intermediary data sets from memory
* Merge the test data and training data into one data set
* Give descriptive labels to activity data in the merged data set
* Summarize the data by calculating averaging all mean and std measurement columns by grouping on activity and then subject
* Export the summarized data to a text file in the working directory

### Output Structure
* activity_labels: descriptive labels based on the information in ".\\activity_labels.txt"
* subject_lables: 1-30 based on which subject performed the activity
* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z
* tBodyAcc-std()-X
* tBodyAcc-std()-Y
* tBodyAcc-std()-Z
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y
* tGravityAcc-mean()-Z
* tGravityAcc-std()-X
* tGravityAcc-std()-Y
* tGravityAcc-std()-Z
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y
* tBodyAccJerk-mean()-Z
* tBodyAccJerk-std()-X
* tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y
* tBodyGyro-mean()-Z
* tBodyGyro-std()-X
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z
* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-mean()-Y
* tBodyGyroJerk-mean()-Z
* tBodyGyroJerk-std()-X
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z
* tBodyAccMag-mean()
* tBodyAccMag-std()
* tGravityAccMag-mean()
* tGravityAccMag-std()
* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std()
* tBodyGyroMag-mean()
* tBodyGyroMag-std()
* tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag-std()
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y
* fBodyAcc-mean()-Z
* fBodyAcc-std()-X
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z
* fBodyAccJerk-mean()-X
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z
* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z
* fBodyGyro-std()-X
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z
* fBodyAccMag-mean()
* fBodyAccMag-std()
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-std()
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std()
