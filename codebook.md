# Codebook
*Author: Paul Beuran (Github: PepperTiger) - Date : 08-30-2020*

**NB : In `total` dataset, the numeric variables have their original meaning. In `total_mean` dataset, the numeric variables possess the same column names as `total`, but means the average of those values.** 

- `id`: Recorded subject's identifier. (Value between 1 and 30)
- `activity`: Recorded subject's activity. The values are:
  - `WALKING`
  - `WALKING_UPSTAIRS`
  - `WALKING_DOWNSTAIRS`
  - `SITTING`
  - `STANDING`
  - `LAYING`
  
Taken from `data\features.info.txt` :

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.  Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.  
  
  > Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).  
  
  > Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).  
  
  > These signals were used to estimate variables of the feature vector for each pattern: '-X|Y|Z' is used to denote 3-axial signals in the X, Y and Z directions.
  
  The variables used in this project are:
- `tBodyAcc-mean()-X|Y|Z`
- `tBodyAcc-std()-X|Y|Z`
- `tGravityAcc-mean()-X|Y|Z`
- `tGravityAcc-std()-X|Y|Z`
- `tBodyAccJerk-mean()-X|Y|Z`
- `tBodyAccJerk-std()-X|Y|Z`
- `tBodyGyro-mean()-X|Y|Z`
- `tBodyGyro-std()-X|Y|Z`
- `tBodyGyroJerk-mean()-X|Y|Z`
- `tBodyGyroJerk-std()-X|Y|Z`
- `tBodyAccMag-mean()`
- `tBodyAccMag-std()`
- `tGravityAccMag-mean()`
- `tGravityAccMag-std()`
- `tBodyAccJerkMag-mean()`
- `tBodyAccJerkMag-std()`
- `tBodyGyroMag-mean()`
- `tBodyGyroMag-std()`
- `tBodyGyroJerkMag-mean()`
- `tBodyGyroJerkMag-std()`
- `fBodyAcc-mean()-X|Y|Z`
- `fBodyAcc-std()-X|Y|Z`
- `fBodyAcc-meanFreq()-X|Y|Z`
- `fBodyAccJerk-mean()-X|Y|Z`
- `fBodyAccJerk-std()-X|Y|Z`
- `fBodyAccJerk-meanFreq()-X|Y|Z`
- `fBodyGyro-mean()-X|Y|Z`
- `fBodyGyro-std()-X|Y|Z`
- `fBodyGyro-meanFreq()-X|Y|Z`
- `fBodyAccMag-mean()`
- `fBodyAccMag-std()`
- `fBodyAccMag-meanFreq()`
- `fBodyBodyAccJerkMag-mean()`
- `fBodyBodyAccJerkMag-std()`
- `fBodyBodyAccJerkMag-meanFreq()`
- `fBodyBodyGyroMag-mean()`
- `fBodyBodyGyroMag-std()`
- `fBodyBodyGyroMag-meanFreq()`
- `fBodyBodyGyroJerkMag-mean()`
- `fBodyBodyGyroJerkMag-std()`
- `fBodyBodyGyroJerkMag-meanFreq()`
