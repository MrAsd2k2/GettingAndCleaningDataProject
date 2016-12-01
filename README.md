# Getting and cleaning data - Course Project

## Human Activity Recognition Using Smartphones Dataset

### Introduction

This repository contains the files needed to assemble, elaborate and produce a proper "tidy set" of data extracted from the Human Activity Recognition database which contains the 
recording of 30 test subjects who have performed daily activities wearing a device (a retail smartphone) with embedded inertial sensors.
The objective of the experiment was to train a predicting model of the nature of the activities performed (from a set of six) based on the data collected by the embedded gyroscope and accelerometer of the wearable device.

### Prerequisites

The script require a working R environment with the "base" library installed and loaded and it has been tested with CRAN R interpreter version 3.3.2.
Moreover the data from the original archive (available at the following address: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
) should be properly unzipped in the working directory *preserving the original directory names and files paths*. 
In case of doubts, please consult the documentation provided with the decompression software in use.

### Script inner logic

The provided script performs the following activities in order to create the tidy data set.
First of all, it loads all the text files for either the train and test sets containing the parameters (X), the response variables (y) and the row index of the subject 
to whom the variables are related to (subject). Moreover the explanatory labels for the activities and the columns names/labels for the X_train and X_test tables were also loaded. 
All provided measures, variables, labels and indexes were supplied in text files without header and special separator character therefore all the tests have been loaded with the _sep=""_ and _header = FALSE_ options.

1.Merges the training and the test sets to create one data set. 

The rbind function is used to merge the test sets and the train sets. This create three temporary sets respectively based on the "bind" of X_train with X_test, y_train with y_test and subject_train with subject_test. 

2.Extracts only the measurements on the mean and standard deviation for each measurement. 

The columns of X are properly named according to the supplied "feature" file.
The grep function and the standard subsetting options (_"["_ and _"]"_) are used to "filter" only the columns related to means or standard deviations and save it in a temporary data frame 
 
3.Uses descriptive activity names to name the activities in the data set

The activity descriptions are loaded from the activity labels. The activity in the "y" table are properly names by merging the "y" and "activity_labels". 
Though not mandatory in this specific case, in order to preserve the completness of the measures (in terms of number of rows), the all.x = TRUE is used.

4.Appropriately labels the data set with descriptive variable names. 

All the columns from the intermediate data frames are merged in a unique data frame using the cbind function then appropriate labels taken from the supplied "feature" file or described in the readme included in the original archive are applied to the columns name. 

5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Finally the average of all the variables is calculated using the _aggregate_ function summarizing the value for subject number and nature of the activity. 
The columns names to whom the data were aggregated are named back and the final data set is extracted with the write.text function.

As the data contains measures for 30 individual in six activities, the end table should contains 180 rows (30*6) plus the header row.

###License

The R script is released under a public domain license.

The original dataset and the data merged and summarized by the present script must be aknowledged referencing the following publication: 

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
