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
* activity_labels (descriptive labels based on the information in ".\\activity_labels.txt")
* subject_lables (1-30 based on which subject performed the activity)
* tbodyacc_mean_x
* tbodyacc_mean_y
* tbodyacc_mean_z
* tbodyacc_std_x
* tbodyacc_std_y
* tbodyacc_std_z
* tgravityacc_mean_x
* tgravityacc_mean_y
* tgravityacc_mean_z
* tgravityacc_std_x
* tgravityacc_std_y
* tgravityacc_std_z
* tbodyaccjerk_mean_x
* tbodyaccjerk_mean_y
* tbodyaccjerk_mean_z
* tbodyaccjerk_std_x
* tbodyaccjerk_std_y
* tbodyaccjerk_std_z
* tbodygyro_mean_x
* tbodygyro_mean_y
* tbodygyro_mean_z
* tbodygyro_std_x
* tbodygyro_std_y
* tbodygyro_std_z
* tbodygyrojerk_mean_x
* tbodygyrojerk_mean_y
* tbodygyrojerk_mean_z
* tbodygyrojerk_std_x
* tbodygyrojerk_std_y
* tbodygyrojerk_std_z
* tbodyaccmag_mean
* tbodyaccmag_std
* tgravityaccmag_mean
* tgravityaccmag_std
* tbodyaccjerkmag_mean
* tbodyaccjerkmag_std
* tbodygyromag_mean
* tbodygyromag_std
* tbodygyrojerkmag_mean
* tbodygyrojerkmag_std
* fbodyacc_mean_x
* fbodyacc_mean_y
* fbodyacc_mean_z
* fbodyacc_std_x
* fbodyacc_std_y
* fbodyacc_std_z
* fbodyaccjerk_mean_x
* fbodyaccjerk_mean_y
* fbodyaccjerk_mean_z
* fbodyaccjerk_std_x
* fbodyaccjerk_std_y
* fbodyaccjerk_std_z
* fbodygyro_mean_x
* fbodygyro_mean_y
* fbodygyro_mean_z
* fbodygyro_std_x
* fbodygyro_std_y
* fbodygyro_std_z
* fbodyaccmag_mean
* fbodyaccmag_std
* fbodybodyaccjerkmag_mean
* fbodybodyaccjerkmag_std
* fbodybodygyromag_mean
* fbodybodygyromag_std
* fbodybodygyrojerkmag_mean
* fbodybodygyrojerkmag_std
