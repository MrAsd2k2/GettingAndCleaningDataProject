#run_analysis.R script version 0.1

# Preliminary activities: load files

subject_train <- read.csv("UCI HAR Dataset/train/subject_train.txt", header=FALSE, sep="")
y_train <- read.csv("UCI HAR Dataset/train/y_train.txt", header=FALSE, sep="")
X_train <- read.csv("UCI HAR Dataset/train/X_train.txt", sep="", header=FALSE)
subject_test <- read.csv("UCI HAR Dataset/test/subject_test.txt", header=FALSE, sep="")
X_test <- read.csv("UCI HAR Dataset/test/X_test.txt", sep="", header=FALSE)
y_test <- read.csv("UCI HAR Dataset/test/y_test.txt", header=FALSE, sep="")
features <- read.csv("UCI HAR Dataset/features.txt", header=FALSE, sep="")
act_labels <- read.csv("UCI HAR Dataset/activity_labels.txt", header=FALSE, sep="")


#1. combine train and test data

subject <- rbind(subject_train, subject_test, make.row.names = FALSE, stringsAsFactors = FALSE)
X <- rbind(X_train, X_test, make.row.names = FALSE, stringsAsFactors = FALSE)
y <- rbind(y_train, y_test, make.row.names = FALSE, stringsAsFactors = FALSE)


#2.Extracts only the measurements on the mean and standard deviation for each measurement.

# extract the index of features that contain only means (*mean*) and standard deviation (*std*) measures 

colindex <- unlist(features[grep("*mean*|*std*", features$V2),1])

# Extract from X only the features needed

x_mean_std <- X[, c(colindex)] 

#3.Uses descriptive activity names to name the activities in the data set

#see point n.5 below


#4 Appropriately labels the data set with descriptive variable names.

# combine subject_train, y, X in an unique table

tdata <- cbind(subject, y, x_mean_std, stringsAsFactors = FALSE)

colnm <- unlist(as.character(features[grep("*mean*|*std*", features$V2),2]))

#change all the columns name with descriptive names

colnm <- append(colnm, c("Subject","Activity"), 0)
colnames(tdata) <- colnm

#5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

tidy_data <- aggregate(tdata[ ,3:(length(tdata))], by=list(tdata$Subject,tdata$Activity), FUN=mean)

# due to a "feature" of the merge command, merging the act_labels should be done after binding all the columns in a data frame. 
# See the Readme file for additional info 
tidy_data <- merge(tidy_data,act_labels, by.x="Group.2", by.y="V1", sort=FALSE )

# reorder and approriately rename the data frame columns  

tidy_data <- subset(tidy_data, select=c(2:1,82,3:81))
colnames(tidy_data) <- append(colnm[3:(length(colnm))], c("Subject", "Activity", "ActivityLabel"), 0)

#export the final table
write.table(tidy_data, file="tidy_data.txt")
