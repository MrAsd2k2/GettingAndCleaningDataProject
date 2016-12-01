# Getting and cleaning data - Course Project
# Human Activity Recognition Using Smartphones Dataset
_________________________________
## Introduction

This repository contains the files needed to assemble, elaborate and produce a proper "tidy set" of data extracted from the Human Activity Recognition database which contains the 
recording of 30 test subjects who have performed daily activities wearing a device (a retail smartphone) with embedded inertial sensors.
The objective of the experiment was to train a predicting model of the nature of the activities performed (from a set of six) based on the data collected by the embedded gyroscope and accelerometer of the wearable device.
_________________________________
## Prerequisites

The script requires a working R environment with the "base" library installed and it has been tested with the R interpreter version 3.3.2 as provided by the R Foundation. Considering that no external or contributed libraries
are used, the script could potentially work with previous version of R and perhaps also with alternative interpreters, however no formal tests have been performed so the use of this script in a different environment than the one mentioned above is therefore at your own risk.

Moreover the data from the original archive (available at the following address: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
) should be properly unzipped in R working directory __*preserving the original directory names and files paths*__. 
In case of doubts, please consult the documentation provided with the unarchiver software used.
_________________________________
## Script inner logic

The provided script performs the following activities in order to create the tidy data set.
First of all, it loads all the text files for either the train and test sets containing the parameters (X), the response variables (y) and the row index of the subject 
to whom the variables are related to (subject). Moreover the explanatory labels for the activities and the columns names/labels for the X_train and X_test tables were also loaded. 
All provided measures, variables, labels and indexes were supplied in text files without header and special separator character therefore all the tests have been loaded with the _sep=""_ and _header = FALSE_ options.
The data about the Inertial Signals are not loaded because they would be discarded by the subsequent tasks anyway. 

###1.Merges the training and the test sets to create one data set. 

The _rbind_ function is used to merge the test sets and the train sets thus creating three temporary data frames respectively based on the merge by rows of X_train with X_test, y_train with y_test and subject_train with subject_test. 

###2.Extracts only the measurements on the mean and standard deviation for each measurement. 

The columns of X are properly named according to the supplied "feature" file.
The grep function and the standard subsetting options (_"["_ and _"]"_) are used to "filter" only the columns related to mean ("*mean*") or standard deviation ("*std*") values and the intermediate data are saved in a temporary data frame 
 
###3.Uses descriptive activity names to name the activities in the data set

The activity descriptions are loaded from the activity labels. The activity in the "y" table are properly names by merging the "y" and "activity_labels" using the standard _merge_ command. 
Though not mandatory in this specific case, in order to preserve the completness of the measures (in terms of number of rows), the all.x = TRUE is used to mimic a sql left join.

###4.Appropriately labels the data set with descriptive variable names. 

All the columns from the intermediate data frames are merged in a unique data frame using the _cbind_ function then appropriate labels taken from the supplied "feature" file (or described in the readme included in the original archive) are applied to the column names of the data frame. 

###5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Finally the average of all the variables is calculated providing the _avg_ function to the _aggregate_ command while summarizing the values for subject number and nature of the activity. 
The columns names to whom the data were aggregated are restored and the final data set is extracted with the _write.text_ function.

As the data contains measures for 30 individual for six possible activities therefore the final "tidy" table should contain 30*6 (=180) rows plus the headers row.
_________________________________
## License

The R script contained is this repository is released under a public domain license.

The original dataset and the data merged and summarized by the present script must be aknowledged referencing the following publication: 

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
