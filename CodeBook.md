# Getting and cleaning data - Course Project

## Code Book for the tidy set 

The present file describes the record schema for the supplied "tidy_data.txt" file and the assumptions and choices made compared to the project requirements and the original source of the data. 


The "tidy" data set supplied is composed of 180 rows (181 with the header row) for 82 columns without an explicit field separator.

### Subject and Activity

The first three fields includes features that represent the population. Please note that **the index that contains the code number of the activity was not discarded** in order to help merging further data without compromising the readibility and the interpretation of the results at a glance.
The following fields identify the subjects and the related activities:

 * _Subject_: character string [1], subject ID with possible values in the range between 1 and 30
 * _Activity_: character string [1], activity ID with possible values from 1 to 6
 * _ActivityLabel_: character string [18], string identifying the activity. The possible status are:
  1.  Walking
  2.  Walking Upstairs
  3.  Walking Downstairs
  4.  Sitting
  5.  Standing
  6.  Laying

## Measurements

All the following fields are signed numeric floating point values exported as 16 characters string (including the decimals separator "." and the sign "-"). As the original features were normalized and bounded within the range [-1, 1], so do the calculated mean values.
All the feature related to means and standard deviations from the original set were kept because explicitely mandated by the project requirements, therefore *measures related to columns labelled as "*meanFreq*" were included in the final "tidy" table as well*.

To aid potential end-users integrating the final results in more complex projects and to improve the compatibility with the original data scheme, *the labels of the selected features were not changed* compared to the list supplied by the authors of the research in the "feature.txt" file.
Nevertheless, the following variables all represent the _mean_ of a set of measurements for each subject and activity therefore their values represents a further aggregation of values compared to the original records. 

* _tBodyAcc-mean()-X_: signed floating point               
* _tBodyAcc-mean()-Y_: signed floating point
* _tBodyAcc-mean()-Z_: signed floating point               
* _tBodyAcc-std()-X_: signed floating point                
* _tBodyAcc-std()-Y_: signed floating point               
* _tBodyAcc-std()-Z_: signed floating point
* _tGravityAcc-mean()-X_: signed floating point
* _tGravityAcc-mean()-Y_: signed floating point
* _tGravityAcc-mean()-Z_: signed floating point           
* _tGravityAcc-std()-X_: signed floating point
* _tGravityAcc-std()-Y_: signed floating point
* _tGravityAcc-std()-Z_: signed floating point
* _tBodyAccJerk-mean()-X_: signed floating point          
* _tBodyAccJerk-mean()-Y_: signed floating point
* _tBodyAccJerk-mean()-Z_: signed floating point           
* _tBodyAccJerk-std()-X_: signed floating point            
* _tBodyAccJerk-std()-Y_: signed floating point           
* _tBodyAccJerk-std()-Z_: signed floating point
* _tBodyGyro-mean()-X_: signed floating point
* _tBodyGyro-mean()-Y_: signed floating point
* _tBodyGyro-mean()-Z_: signed floating point
* _tBodyGyro-std()-X_: signed floating point
* _tBodyGyro-std()-Y_: signed floating point
* _tBodyGyro-std()-Z_: signed floating point
* _tBodyGyroJerk-mean()-X_: signed floating point         
* _tBodyGyroJerk-mean()-Y_: signed floating point
* _tBodyGyroJerk-mean()-Z_: signed floating point          
* _tBodyGyroJerk-std()-X_: signed floating point
* _tBodyGyroJerk-std()-Y_: signed floating point
* _tBodyGyroJerk-std()-Z_: signed floating point           
* _tBodyAccMag-mean()_: signed floating point              
* _tBodyAccMag-std()_: signed floating point               
* _tGravityAccMag-mean()_: signed floating point          
* _tGravityAccMag-std()_: signed floating point            
* _tBodyAccJerkMag-mean()_: signed floating point          
* _tBodyAccJerkMag-std()_: signed floating point           
* _tBodyGyroMag-mean()_: signed floating point            
* _tBodyGyroMag-std()_: signed floating point
* _tBodyGyroJerkMag-mean()_: signed floating point         
* _tBodyGyroJerkMag-std()_: signed floating point          
* _fBodyAcc-mean()-X_: signed floating point              
* _fBodyAcc-mean()-Y_: signed floating point
* _fBodyAcc-mean()-Z_: signed floating point               
* _fBodyAcc-std()-X_: signed floating point                
* _fBodyAcc-std()-Y_: signed floating point               
* _fBodyAcc-std()-Z_: signed floating point
* _fBodyAcc-meanFreq()-X_: signed floating point
* _fBodyAcc-meanFreq()-Y_: signed floating point           
* _fBodyAcc-meanFreq()-Z_: signed floating point          
* _fBodyAccJerk-mean()-X_: signed floating point           
* _fBodyAccJerk-mean()-Y_: signed floating point           
* _fBodyAccJerk-mean()-Z_: signed floating point           
* _fBodyAccJerk-std()-X_: signed floating point           
* _fBodyAccJerk-std()-Y_: signed floating point
* _fBodyAccJerk-std()-Z_: signed floating point
* _fBodyAccJerk-meanFreq()-X_: signed floating point
* _fBodyAccJerk-meanFreq()-Y_: signed floating point      
* _fBodyAccJerk-meanFreq()-Z_: signed floating point       
* _fBodyGyro-mean()-X_: signed floating point
* _fBodyGyro-mean()-Y_: signed floating point              
* _fBodyGyro-mean()-Z_: signed floating point             
* _fBodyGyro-std()-X_: signed floating point               
* _fBodyGyro-std()-Y_: signed floating point               
* _fBodyGyro-std()-Z_: signed floating point               
* _fBodyGyro-meanFreq()-X_: signed floating point         
* _fBodyGyro-meanFreq()-Y_: signed floating point
* _fBodyGyro-meanFreq()-Z_: signed floating point
* _fBodyAccMag-mean()_: signed floating point
* _fBodyAccMag-std()_: signed floating point              
* _fBodyAccMag-meanFreq()_: signed floating point
* _fBodyBodyAccJerkMag-mean()_: signed floating point      
* _fBodyBodyAccJerkMag-std()_: signed floating point       
* _fBodyBodyAccJerkMag-meanFreq()_: signed floating point 
* _fBodyBodyGyroMag-mean()_: signed floating point         
* _fBodyBodyGyroMag-std()_: signed floating point          
* _fBodyBodyGyroMag-meanFreq()_: signed floating point     
* _fBodyBodyGyroJerkMag-mean()_: signed floating point    
* _fBodyBodyGyroJerkMag-std()_: signed floating point      
* _fBodyBodyGyroJerkMag-meanFreq()_: signed floating point
