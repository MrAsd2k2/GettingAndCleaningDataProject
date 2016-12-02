# Getting and cleaning data - Course Project

##Code Book for the tidy set 

The source of the original data is the following archive [http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip](http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip)

All the fields are separated by space (" ") symbols without headers. When needed, label descriptions or column names are described and provided in additional .txt files (included in the archive).
With the exception of the X_train.txt and X_test.txt, all the text files include a single feature (column) for each sample (row).

The "tidy" data set supplied is composed of 180 rows (181 with the header row) for 82 columns.

 ### Subject and Activity

The first three fields includes features that represent the population. Please note that *the index that contains the code number of the activity was kept together with its description* in order to help merging further data without compromising the readibility 
and the interpretation of the results at a glance.
The following fields identify the subjects and the related activities:

 * Subject: char[1], subject ID with possible values in the range between 1 and 30
 * Activity: char[1], activity ID with possible values from 1 to 6
 * ActivityLabel: char[18], string identifying the activity. The possible status are:
  1 Walking
  2 Walking Upstairs
  3 Walking Downstairs
  4 Sitting
  5 Standing
  6 Laying

## Measurements

All the following fields are signed numeric floating point values exported as 16 characters string (including the decimals separator "." and the sign "-"). As the original features were normalized and bounded within the range [-1, 1], so do the calculated mean values.
All the feature related to means and standard deviations from the original set were kept because explicitely mandated by the project requirements, therefore *measures related to columns labelled as "*meanFreq*" were included in the final "tidy" table as well*.

To aid potential end-users integrating the final results in more complex projects and to improve the compatibility with the original data scheme, the *labels of the selected features were not changed* compared to the list supplied by the authors of the research in the "feature.txt" file.
Nevertheless, the following variables all represent the _mean_ of a set of measurements for each subject and activity. 

 
* tBodyAcc-mean()-X: signed floating point               
* tBodyAcc-mean()-Y: signed floating point
* tBodyAcc-mean()-Z: signed floating point               
* tBodyAcc-std()-X: signed floating point                
* tBodyAcc-std()-Y: signed floating point               
* tBodyAcc-std()-Z: signed floating point
* tGravityAcc-mean()-X: signed floating point
* tGravityAcc-mean()-Y: signed floating point
* tGravityAcc-mean()-Z: signed floating point           
* "tGravityAcc-std()-X: signed floating point
* tGravityAcc-std()-Y: signed floating point
* tGravityAcc-std()-Z: signed floating point
* tBodyAccJerk-mean()-X: signed floating point          
* tBodyAccJerk-mean()-Y: signed floating point
* tBodyAccJerk-mean()-Z: signed floating point           
* tBodyAccJerk-std()-X: signed floating point            
* tBodyAccJerk-std()-Y: signed floating point           
* tBodyAccJerk-std()-Z: signed floating point
* tBodyGyro-mean()-X: signed floating point
* tBodyGyro-mean()-Y: signed floating point
* tBodyGyro-mean()-Z: signed floating point
* tBodyGyro-std()-X: signed floating point
* tBodyGyro-std()-Y: signed floating point
* tBodyGyro-std()-Z: signed floating point
* tBodyGyroJerk-mean()-X: signed floating point         
* tBodyGyroJerk-mean()-Y: signed floating point
* tBodyGyroJerk-mean()-Z: signed floating point          
* tBodyGyroJerk-std()-X: signed floating point
* tBodyGyroJerk-std()-Y: signed floating point
* tBodyGyroJerk-std()-Z: signed floating point           
* tBodyAccMag-mean(): signed floating point              
* tBodyAccMag-std(): signed floating point               
* tGravityAccMag-mean(): signed floating point          
* tGravityAccMag-std(): signed floating point            
* tBodyAccJerkMag-mean(): signed floating point          
* tBodyAccJerkMag-std(): signed floating point           
* tBodyGyroMag-mean(): signed floating point            
* tBodyGyroMag-std(): signed floating point
* tBodyGyroJerkMag-mean(): signed floating point         
* tBodyGyroJerkMag-std(): signed floating point          
* fBodyAcc-mean()-X: signed floating point              
* fBodyAcc-mean()-Y: signed floating point
* fBodyAcc-mean()-Z: signed floating point               
* fBodyAcc-std()-X: signed floating point                
* fBodyAcc-std()-Y: signed floating point               
* fBodyAcc-std()-Z: signed floating point
* fBodyAcc-meanFreq()-X: signed floating point
* fBodyAcc-meanFreq()-Y: signed floating point           
* fBodyAcc-meanFreq()-Z: signed floating point          
* fBodyAccJerk-mean()-X: signed floating point           
* fBodyAccJerk-mean()-Y: signed floating point           
* fBodyAccJerk-mean()-Z: signed floating point           
* fBodyAccJerk-std()-X: signed floating point           
* fBodyAccJerk-std()-Y: signed floating point
* fBodyAccJerk-std()-Z: signed floating point
* fBodyAccJerk-meanFreq()-X: signed floating point
* fBodyAccJerk-meanFreq()-Y: signed floating point      
* fBodyAccJerk-meanFreq()-Z: signed floating point       
* fBodyGyro-mean()-X: signed floating point
* fBodyGyro-mean()-Y: signed floating point              
* fBodyGyro-mean()-Z: signed floating point             
* fBodyGyro-std()-X: signed floating point               
* fBodyGyro-std()-Y: signed floating point               
* fBodyGyro-std()-Z: signed floating point               
* fBodyGyro-meanFreq()-X: signed floating point         
* fBodyGyro-meanFreq()-Y: signed floating point
* fBodyGyro-meanFreq()-Z: signed floating point
* fBodyAccMag-mean(): signed floating point
* fBodyAccMag-std(): signed floating point              
* fBodyAccMag-meanFreq(): signed floating point
* fBodyBodyAccJerkMag-mean(): signed floating point      
* fBodyBodyAccJerkMag-std(): signed floating point       
* fBodyBodyAccJerkMag-meanFreq(): signed floating point 
* fBodyBodyGyroMag-mean(): signed floating point         
* fBodyBodyGyroMag-std(): signed floating point          
* fBodyBodyGyroMag-meanFreq(): signed floating point     
* fBodyBodyGyroJerkMag-mean(): signed floating point    
* fBodyBodyGyroJerkMag-std(): signed floating point      
* fBodyBodyGyroJerkMag-meanFreq(): signed floating point
