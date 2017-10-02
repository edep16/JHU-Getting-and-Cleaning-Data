# tidy data set CodeBook 
## Raw data

The raw data used to obtain the final tidy data set presented in this repository can be found in this link: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This raw original data contains 561 different variables which, according to the features_info.txt file:
come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using
a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly,
the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using 
another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ 
and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
(tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ,
fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

## Variable selection
The purpose of this exercise was to extract the variables that represented the mean and the standard deviation of a particular 
measurement. So, considering the following features: 

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

Only the variables that corresponded to the mean() and std() (standard deviation) were extracted. It is important to note that
the mean variables used with the angle() variable, meaning: 

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

Were not loaded into the tidy data. 

## Variable names

The variable names are of the form "tbodyaccmeanx" "tBodyAcc.mean.X" which correspond to "tBodyAcc-mean()-X". It is important to note that this
variable name doesn't contain: 
* dots
* uppercase letters

The decision to remove dots and turn uppercase letters into lowercase was taken due to the recomendation of the instructor however,
for readability purpouses, maybe it would have been important to leave the uppercase letters and dots obtaining a name of the form
"tBodyAcc.mean.X" 

## Variable units of measurement

The variables are normalized and bounded within [-1, 1]








