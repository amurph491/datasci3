==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.

==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

==================================================================
Dataset has been combined and reorganized by Alex Murphy for "Getting and Cleaning Data" Coursera Class, 1/21/2015

The "tidy" dataset includes the mean and standard deviation for each measurement taken.

A measurement consists of the following data: activity (eg. WALKING, STANDING), SubjectNumber (1-30, for each participant in the study) and then the following measurements:

tBodyAcc - XYZ
tGravityAcc - XYZ
tBodyAccJerk - XYZ
tBodyGyro - XYZ
tBodyGyroJerk - XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc - XYZ
fBodyAccJerk - XYZ
fBodyGyro - XYZ
fBodyAccMag
fBodyBodyAccJerkMag
fBodyBodyGyroMag
fBodyBodyGyroJerkMag

The 't' prefix denotes measurements in the time domain, and the f prefix denotes measurements in the frequency domain. Mag refers to the magnitude of the vector, 
whereas XYZ indicates that there is a measurement for each component of that vector. Each measurement is reported as a "mean" and standard deviation "std".

The units for the measurements are as follows:
Acc = acceleration in standard gravity, or "g" units.
Gyro = angular velocity in radians/second

The run_analysis.R script
=======================================
The run analysis script takes the data from the researchers and extracts just the mean and std measurements.
The data was originally divided randomly into a "training" set and a "test" set.  This script recombines all of data back into one file.
The columns are labeled according to "features.txt" and the activity IDs are merged with activity_labels.txt
