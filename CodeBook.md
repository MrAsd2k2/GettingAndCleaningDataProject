# Getting and cleaning data - Course Project

##Code Book for the tidy set 


All the fields are separated by space (" ") symbols.

 
### Subject and Activity

The following variables identify the subjects and the related activities:

 * Subject: char[1], subject ID with possible values from 1 to 30.
 * Activity: char[1], activity ID with possible values from 1 to 6
 * ActivityLabel: char[18], string identifying the activity. The possible status are:
  - Walking
  - Walking Upstairs
  - Walking Downstairs
  - Sitting
  - Standing
  - Laying

## Measurements

The following variables all represent the mean of a measurement for each subject and activity. 
All the fields are signed numeric floating point values exported as 16 characters string (including the integer separator "." and the sign "-")

