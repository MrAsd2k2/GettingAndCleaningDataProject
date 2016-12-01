# Getting and cleaning data - Course Project

##Code Book for the tidy set 

The source of the original data is the following archive [http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip](http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip)

All the fields are separated by space (" ") symbols without headers. When needed, label descriptions or column names are described and provided in additional .txt files (included in the archive).
With the exception of the X_train.txt and X_test.txt, all the text files include a single feature (column) for each sample (row).

The "tidy" data set is composed of 180 rows (181 with the header row) for _*TODO*_ columns

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

All the fields are signed numeric floating point values exported as 16 characters string (including the integer separator "." and the sign "-"). As the original features were normalized and bounded within the range [-1, 1], so do the calculated mean values.
All the feature related to means and standard deviations from the original set were kept because explicitely mandated by the project requirements, therefore *measures related to columns labelled as "*meanFreq*" were included in the final "tidy" table as well*.

To aid potential end-users integrating the final results in more complex projects and to improve the compatibility with the original data scheme, the *labels of the selected features were not changed* compared to the list supplied by the authors of the research in the "feature.txt" file.
Nevertheless, the following variables all represent the _mean_ of a set of measurements for each subject and activity. 

 
_*TODO*_