# Summary

The R script `run_analysis.R`performs the next steps described in the course project:

* Downloading and unzipping file
* Reading the files to data tables
* Merging the training and test sets to one data set using the `rbind()`
* Loading names of the variables from 'features.txt' and naming all data
* Merging all data together
* Extracting only the measurements on the mean and standard deviation
* Setting a discriptive names
* Creating another (tidy) data set

## Identifiers

* `subject` - The ID of the test subject
* `activity` - The type of activity performed when the corresponding measurements were taken

## Activity Labels

* `WALKING` (value `1`): subject was walking during the test
* `WALKING_UPSTAIRS` (value `2`): subject was walking up a staircase during the test
* `WALKING_DOWNSTAIRS` (value `3`): subject was walking down a staircase during the test
* `SITTING` (value `4`): subject was sitting during the test
* `STANDING` (value `5`): subject was standing during the test
* `LAYING` (value `6`): subject was laying down during the test

## Measurements

* 'timeBodyAccelerometer-mean()-X'
* 'timeBodyAccelerometer-mean()-Y'
* 'timeBodyAccelerometer-mean()-Z'
* 'timeBodyAccelerometer-std()-X'
* 'timeBodyAccelerometer-std()-Y'
* 'timeBodyAccelerometer-std()-Z'
* 'timeGravityAccelerometer-mean()-X'
* 'timeGravityAccelerometer-mean()-Y'
* 'timeGravityAccelerometer-mean()-Z'
* 'timeGravityAccelerometer-std()-X'
* 'timeGravityAccelerometer-std()-Y'
* 'timeGravityAccelerometer-std()-Z'
* 'timeBodyAccelerometerJerk-mean()-X'
* 'timeBodyAccelerometerJerk-mean()-Y'
* 'timeBodyAccelerometerJerk-mean()-Z'
* 'timeBodyAccelerometerJerk-std()-X'
* 'timeBodyAccelerometerJerk-std()-Y'
* 'timeBodyAccelerometerJerk-std()-Z'
* 'timeBodyGyroscope-mean()-X'
* 'timeBodyGyroscope-mean()-Y'
* 'timeBodyGyroscope-mean()-Z'
* 'timeBodyGyroscope-std()-X'
* 'timeBodyGyroscope-std()-Y'
* 'timeBodyGyroscope-std()-Z'
* 'timeBodyGyroscopeJerk-mean()-X'
* 'timeBodyGyroscopeJerk-mean()-Y'
* 'timeBodyGyroscopeJerk-mean()-Z'
* 'timeBodyGyroscopeJerk-std()-X'
* 'timeBodyGyroscopeJerk-std()-Y'
* 'timeBodyGyroscopeJerk-std()-Z'
* 'timeBodyAccelerometerMagnitude-mean()'
* 'timeBodyAccelerometerMagnitude-std()'
* 'timeGravityAccelerometerMagnitude-mean()'
* 'timeGravityAccelerometerMagnitude-std()'
* 'timeBodyAccelerometerJerkMagnitude-mean()'
* 'timeBodyAccelerometerJerkMagnitude-std()'
* 'timeBodyGyroscopeMagnitude-mean()'
* 'timeBodyGyroscopeMagnitude-std()'
* 'timeBodyGyroscopeJerkMagnitude-mean()'
* 'timeBodyGyroscopeJerkMagnitude-std()'
* 'frequencyBodyAccelerometer-mean()-X'
* 'frequencyBodyAccelerometer-mean()-Y'
* 'frequencyBodyAccelerometer-mean()-Z'
* 'frequencyBodyAccelerometer-std()-X'
* 'frequencyBodyAccelerometer-std()-Y'
* 'frequencyBodyAccelerometer-std()-Z'
* 'frequencyBodyAccelerometerJerk-mean()-X'
* 'frequencyBodyAccelerometerJerk-mean()-Y'
* 'frequencyBodyAccelerometerJerk-mean()-Z'
* 'frequencyBodyAccelerometerJerk-std()-X'
* 'frequencyBodyAccelerometerJerk-std()-Y'
* 'frequencyBodyAccelerometerJerk-std()-Z'
* 'frequencyBodyGyroscope-mean()-X'
* 'frequencyBodyGyroscope-mean()-Y'
* 'frequencyBodyGyroscope-mean()-Z'
* 'frequencyBodyGyroscope-std()-X'
* 'frequencyBodyGyroscope-std()-Y'
* 'frequencyBodyGyroscope-std()-Z'
* 'frequencyBodyAccelerometerMagnitude-mean()'
* 'frequencyBodyAccelerometerMagnitude-std()'
* 'frequencyBodyAccelerometerJerkMagnitude-mean()'
* 'frequencyBodyAccelerometerJerkMagnitude-std()'
* 'frequencyBodyGyroscopeMagnitude-mean()'
* 'frequencyBodyGyroscopeMagnitude-std()'
* 'frequencyBodyGyroscopeJerkMagnitude-mean()'
* 'frequencyBodyGyroscopeJerkMagnitude-std()'