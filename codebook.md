A code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries
calculated, along with units, and any other relevant information

# Codebook

## Introduction
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Variables Name
There are 68 Variables

| names(tidydata)                   	|
|----------------------------	|
|                   subject  	|
|                  activity  	|
|          timebodyaccmean_x 	|
|          timebodyaccmean_y 	|
|          timebodyaccmean_z 	|
|           timebodyaccstd_x 	|
|           timebodyaccstd_y 	|
|           timebodyaccstd_z 	|
|       timegravityaccmean_x 	|
|       timegravityaccmean_y 	|
|       timegravityaccmean_z 	|
|        timegravityaccstd_x 	|
|        timegravityaccstd_y 	|
|        timegravityaccstd_z 	|
|      timebodyaccjerkmean_x 	|
|      timebodyaccjerkmean_y 	|
|      timebodyaccjerkmean_z 	|
|       timebodyaccjerkstd_x 	|
|       timebodyaccjerkstd_y 	|
|       timebodyaccjerkstd_z 	|
|         timebodygyromean_x 	|
|         timebodygyromean_y 	|
|         timebodygyromean_z 	|
|         timebodygyrostd_x 	|
|          timebodygyrostd_y 	|
|          timebodygyrostd_z 	|
|     timebodygyrojerkmean_x 	|
|     timebodygyrojerkmean_y 	|
|     timebodygyrojerkmean_z 	|
|      timebodygyrojerkstd_x 	|
|      timebodygyrojerkstd_y 	|
|      timebodygyrojerkstd_z 	|
|         timebodyaccmagmean 	|
|          timebodyaccmagstd 	|
|      timegravityaccmagmean 	|
|       timegravityaccmagstd 	|
|     timebodyaccjerkmagmean 	|
|      timebodyaccjerkmagstd 	|
|        timebodygyromagmean 	|
|         timebodygyromagstd 	|
|    timebodygyrojerkmagmean 	|
|     timebodygyrojerkmagstd 	|
|          freqbodyaccmean_x 	|
|          freqbodyaccmean_y 	|
|          freqbodyaccmean_z 	|
|           freqbodyaccstd_x 	|
|           freqbodyaccstd_y 	|
|           freqbodyaccstd_z 	|
|      freqbodyaccjerkmean_x 	|
|      freqbodyaccjerkmean_y 	|
|      freqbodyaccjerkmean_z 	|
|       freqbodyaccjerkstd_x 	|
|       freqbodyaccjerkstd_y 	|
|       freqbodyaccjerkstd_z 	|
|         freqbodygyromean_x 	|
|         freqbodygyromean_y 	|
|         freqbodygyromean_z 	|
|          freqbodygyrostd_x 	|
|          freqbodygyrostd_y 	|
|          freqbodygyrostd_z 	|
|         freqbodyaccmagmean 	|
|          freqbodyaccmagstd 	|
|     freqbodyaccjerkmagmean 	|
|      freqbodyaccjerkmagstd 	|
|        freqbodygyromagmean 	|
|         freqbodygyromagstd 	|
|    freqbodygyrojerkmagmean 	|
|     freqbodygyrojerkmagstd 	|

## Variable Description
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

| Variables         |
|-------------------|
| tBodyAcc-XYZ      |
| tGravityAcc-XYZ   |
| tBodyAccJerk-XYZ  |
| tBodyGyro-XYZ     |
| tBodyGyroJerk-XYZ |
| tBodyAccMag       |
| tGravityAccMag    |
| tBodyAccJerkMag   |
| tBodyGyroMag      |
| tBodyGyroJerkMag  |
| fBodyAcc-XYZ      |
| fBodyAccJerk-XYZ  |
| fBodyGyro-XYZ     |
| fBodyAccMag       |
| fBodyAccJerkMag   |
| fBodyGyroMag      |
| fBodyGyroJerkMag  |


The set of variables that were estimated from these signals are: 

mean(): Mean value

std(): Standard deviation

## summarises

**summarize(tidydata)**  
this will generated complete list

### Note: Due to size issue it has saved in summarize.txt file 


## Units
1. 3-axial angular velocity at a constant rate of 50Hz
2. age 19-48 years
3. 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
4. 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
5. 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
6.  'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

## Dataset Description
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
