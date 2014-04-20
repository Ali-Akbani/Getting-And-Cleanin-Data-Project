# getwd();
# "C:/Users/MA250250/Documents"

# download the zip file from URL. then extract from zip into a folder

# Set the directory where the files are extracted
#setwd("C:\\Users\\MA250250\\Documents\\Coursera\\Getting and Cleaning Data\\UCI HAR Dataset");

# Load the feature names to use as variable names
features <- read.delim(file=".\\features.txt", header=FALSE, sep="", quote="", comment.char="", nrows=562, colClasses=c("NULL","character"));
feature_labels <- features[[1]];
remove(features);

# Load the training data
activity_labels <- read.delim(file=".\\train\\y_train.txt", header=FALSE, sep="", quote="", nrows=7353, colClasses=c("character"))[[1]];
subject_labels <- read.delim(file=".\\train\\subject_train.txt", header=FALSE, sep="", quote="", nrows=7353, colClasses=c("character"))[[1]];
all_training_data <- read.delim(file=".\\train\\X_train.txt",header=FALSE,sep="",quote="",comment.char="",nrows=7353,col.names=feature_labels);
training_data <- cbind(activity_labels, subject_labels, all_training_data[, grep(pattern="[.]mean[.]|[.]std[.]",x=names(all_training_data), ignore.case=TRUE)] );
remove(activity_labels);
remove(subject_labels);
remove(all_training_data);

# Load the test data
activity_labels <- read.delim(file=".\\test\\y_test.txt", header=FALSE, sep="", quote="", nrows=2947, colClasses=c("character"))[[1]];
subject_labels <- read.delim(file=".\\test\\subject_test.txt", header=FALSE, sep="", quote="", nrows=2947, colClasses=c("character"))[[1]];
all_test_data <- read.delim(file=".\\test\\X_test.txt",header=FALSE,sep="",quote="",comment.char="",nrows=2947,col.names=feature_labels);
test_data <- cbind(activity_labels, subject_labels, all_test_data[, grep(pattern="[.]mean[.]|[.]std[.]",x=names(all_test_data), ignore.case=TRUE)] );
remove(activity_labels);
remove(subject_labels);
remove(all_test_data);

all_data <- rbind( training_data, test_data );
remove(test_data);
remove(training_data);
remove(feature_labels);

#label the data with descriptive name based on .\\activity_labels.txt
all_data$activity_labels <- factor(all_data$activity_labels, levels=c(1,2,3,4,5,6), labels=c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"));

summary_data <- aggregate( . ~ activity_labels + subject_labels, data=all_data,FUN="mean");

#write.csv(x=summary_data,file="summary_data.txt");
write.table(x=summary_data,file=".\\summary_data.txt",quote=FALSE,append=FALSE,sep=" ",row.names=FALSE,col.names=FALSE);
