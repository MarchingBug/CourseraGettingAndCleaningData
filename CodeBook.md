# Getting and Cleaning Data Course Project - Code Book

This file describes the files and steps to follow to import, merge and export wearable devices data statistical information. 
 

# Data transformation steps
    1.Downloaded the data set
    2.Unzipped the data set into a chosen working directory
    3.Loading libraries plyr, data.table, dplyr
    4.Loaded activity labels and added column names
    4.Loaded features variable names and added column names
    3.Loaded test and training data sets and merged them using rbin
    6.Created a list of features that includes only mean and standard deviation variables<
    7.Selected data frames to include only the selected features
    8.Replaced activity IDs with the activity labels for readability
    9.Combined the data frames to produce one data frame containing the subjects, measurements and activities
    11.Created a new data set using the data.table library to easily group data by subject and activity
    12.Used aggregate to apply mean and standard deviations by subject and activity
    13.Produced "statisticalInformation.txt" as the  expected output
    
# Data set structure


  * 'features_info.txt': Shows information about the variables used on the feature vector.
  
  * 'features.txt': List of all features.
  
  * 'activity_labels.txt': Links the class labels with their activity name.
  
  * 'train/X_train.txt': Training set.
  
  * 'train/y_train.txt': Training labels.
  
  * 'test/X_test.txt': Test set.
  
  * 'test/y_test.txt': Test labels.
  
  The following files are available for the train and test data. Their descriptions are equivalent. 

  * 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

  * 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

  * 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
  
  * 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/secon
  
# Data Information

  * Subjects: 30 subjects, subjectId range from 1 - 30
  * Activities: 6 Activity range from 1 - 6 catalogs the activity at the time of data collection
  * Features: features 561 range from 1 - 561; these are the meassurements collected, but only those collecting mean or standard deviation are used in this study
            
            tBodyAcc-mean-X
            tBodyAcc-mean-Y
            tBodyAcc-mean-Z
            tBodyAcc-std-X
            tBodyAcc-std-Y
            tBodyAcc-std-Z
            tGravityAcc-mean-X
            tGravityAcc-mean-Y
            tGravityAcc-mean-Z
            tGravityAcc-std-X
            tGravityAcc-std-Y
            tGravityAcc-std-Z
            tBodyAccJerk-mean-X
            tBodyAccJerk-mean-Y
            tBodyAccJerk-mean-Z
            tBodyAccJerk-std-X
            tBodyAccJerk-std-Y
            tBodyAccJerk-std-Z
            tBodyGyro-mean-X
            tBodyGyro-mean-Y
            tBodyGyro-mean-Z
            tBodyGyro-std-X
            tBodyGyro-std-Y
            tBodyGyro-std-Z
            tBodyGyroJerk-mean-X
            tBodyGyroJerk-mean-Y
            tBodyGyroJerk-mean-Z
            tBodyGyroJerk-std-X
            tBodyGyroJerk-std-Y
            tBodyGyroJerk-std-Z
            tBodyAccMag-mean
            tBodyAccMag-std
            tGravityAccMag-mean
            tGravityAccMag-std
            tBodyAccJerkMag-mean
            tBodyAccJerkMag-std
            tBodyGyroMag-mean
            tBodyGyroMag-std
            tBodyGyroJerkMag-mean
            tBodyGyroJerkMag-std
            fBodyAcc-mean-X
            fBodyAcc-mean-Y
            fBodyAcc-mean-Z
            fBodyAcc-std-X
            fBodyAcc-std-Y
            fBodyAcc-std-Z
            fBodyAccJerk-mean-X
            fBodyAccJerk-mean-Y
            fBodyAccJerk-mean-Z
            fBodyAccJerk-std-X
            fBodyAccJerk-std-Y
            fBodyAccJerk-std-Z
            fBodyGyro-mean-X
            fBodyGyro-mean-Y
            fBodyGyro-mean-Z
            fBodyGyro-std-X
            fBodyGyro-std-Y
            fBodyGyro-std-Z
            fBodyAccMag-mean
            fBodyAccMag-std
            fBodyBodyAccJerkMag-mean
            fBodyBodyAccJerkMag-std
            fBodyBodyGyroMag-mean
            fBodyBodyGyroMag-std
            fBodyBodyGyroJerkMag-mean
            fBodyBodyGyroJerkMag-std


  
  
