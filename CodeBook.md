## Code Book for the analysis of the _Human Activity Recognition Using Smartphones Data Set_.

<br/>
**Note:** _Please refer to the [README](README.md) file to get information about how to execute the script and related files to clean and analyze and get the output tidy data._

# 1. The output data
When running the script `run_analysis.R` we get a data frame that it identical to the one contained in [this file](tidy_data_result.txt).
The frame contains the average value by **activity and by suject** of different measurements of 66 means and standard deviations of several signals. Here is the Data Dictionary of the output data:
- Activities : the name of the activity corresponding to the average values
- Subjects : the id of each subject that performed the activities
- tBodyAcceleration-mean X Direction : the average value for the given activity and subject of the body accelaration mean in the X axis. The values are measured in Hz.
- tBodyAcceleration-mean Y Direction: the average value for the given activity and subject of the body accelaration mean in the Y axis. The values are measured in Hz.
- tBodyAcceleration-mean Z Direction: the average value for the given activity and subject of the body accelaration mean in the Z axis. The values are measured in Hz.
- tBodyAcceleration-std X Direction: the average value for the given activity and subject of the body accelaration standard deviation in the X axis.
- tBodyAcceleration-std Y Direction: the average value for the given activity and subject of the body accelaration standard deviation in the Y axis.
- tBodyAcceleration-std Z Direction: the average value for the given activity and subject of the body accelaration standard deviation in the Z axis.
- tGravityAcceleration-mean X Direction: the average value for the given activity and subject of the gravity accelaration mean along the X axis.
- tGravityAcceleration-mean Y Direction: the average value for the given activity and subject of the gravity accelaration mean along the Y axis.
- tGravityAcceleration-mean Z Direction: the average value for the given activity and subject of the gravity accelaration mean along the Z axis.
- tGravityAcceleration-std X Direction: the average value for the given activity and subject of the gravity accelaration standard deviation along the X axis.
- tGravityAcceleration-std Y Direction: the average value for the given activity and subject of the gravity accelaration standard deviation along the Y axis.
- tGravityAcceleration-std Z Direction: the average value for the given activity and subject of the gravity accelaration standard deviation along the Z axis.
- tBodyAccelerationJerk-mean X Direction: the average value for the given activity and subject of the body linear acceleration mean along the X axis.
- tBodyAccelerationJerk-mean Y Direction: the average value for the given activity and subject of the body linear acceleration mean along the Y axis.
- tBodyAccelerationJerk-mean Z Direction: the average value for the given activity and subject of the body linear acceleration mean along the Z axis.
- tBodyAccelerationJerk-std X Direction: the average value for the given activity and subject of the body linear acceleration standard deviation along the X axis.
- tBodyAccelerationJerk-std Y Direction: the average value for the given activity and subject of the body linear acceleration standard deviation along the Y axis.
- tBodyAccelerationJerk-std Z Direction: the average value for the given activity and subject of the body linear acceleration standard deviation along the Z axis.
- tBodyGyro-mean X Direction: the average value for the given activity and subject of the angular velocity mean along the X axis.
- tBodyGyro-mean Y Direction: the average value for the given activity and subject of the angular velocity mean along the Y axis.
- tBodyGyro-mean Z Direction: the average value for the given activity and subject of the angular velocity mean along the Z axis.
- tBodyGyro-std X Direction: the average value for the given activity and subject of the angular velocity standard deviation along the X axis.
- tBodyGyro-std Y Direction: the average value for the given activity and subject of the angular velocity standard deviation along the Y axis.
- tBodyGyro-std Z Direction: the average value for the given activity and subject of the angular velocity standard deviation along the Z axis.
- tBodyGyroJerk-mean X Direction: the average value for the given activity and subject of the angular velocity Jerk signal mean along the X axis.
- tBodyGyroJerk-mean Y Direction: the average value for the given activity and subject of the angular velocity Jerk signal mean along the Y axis.
- tBodyGyroJerk-mean Z Direction: the average value for the given activity and subject of the angular velocity Jerk signal mean along the Z axis.
- tBodyGyroJerk-std X Direction: the average value for the given activity and subject of the angular velocity Jerk signal standard deviation along the X axis.
- tBodyGyroJerk-std Y Direction: the average value for the given activity and subject of the angular velocity Jerk signal standard deviation along the Y axis.
- tBodyGyroJerk-std Z Direction: the average value for the given activity and subject of the angular velocity Jerk signal standard deviation along the Z axis.
- tBodyAccelerationMagnitude-mean: the average value for the given activity and subject of the body acceleration magnitude mean.
- tBodyAccelerationMagnitude-std: the average value for the given activity and subject of the body acceleration magnitude standard deviation.
- tGravityAccelerationMagnitude-mean: the average value for the given activity and subject of the gravity acceleration magnitude mean.
- tGravityAccelerationMagnitude-std: the average value for the given activity and subject of the gravity acceleration magnitude standard deviation.
- tBodyAccelerationJerkMagnitude-mean: the average value for the given activity and subject of the body acceleration Jerk signal magnitude mean.
- tBodyAccelerationJerkMagnitude-std: the average value for the given activity and subject of the body acceleration Jerk signal magnitude standard deviation.
- tBodyGyroMagnitude-mean: the average value for the given activity and subject of the body angular velocity magnitude mean
- tBodyGyroMagnitude-std: the average value for the given activity and subject of the body angular velocity magnitude standard deviation
- tBodyGyroJerkMagnitude-mean: the average value for the given activity and subject of the body angular velocity Jerk signal magnitude mean
- tBodyGyroJerkMagnitude-std: the average value for the given activity and subject of the body angular velocity Jerk signal magnitude standard deviation
- fBodyAcceleration-mean X Direction: the average value for the given activity and subject of the FFT applied to body acceleration mean along the X axis
- fBodyAcceleration-mean Y Direction: the average value for the given activity and subject of the FFT applied to body acceleration mean along the Y axis
- fBodyAcceleration-mean Z Direction: the average value for the given activity and subject of the FFT applied to body acceleration mean along the Z axis
- fBodyAcceleration-std X Direction: the average value for the given activity and subject of the FFT applied to body acceleration standard deviation along the X axis
- fBodyAcceleration-std Y Direction: the average value for the given activity and subject of the FFT applied to body acceleration standard deviation along the Y axis
- fBodyAcceleration-std Z Direction: the average value for the given activity and subject of the FFT applied to body acceleration standard deviation along the Z axis
- fBodyAccelerationJerk-mean X Direction: the average value for the given activity and subject of the FFT applied to body acceleration Jerk signal mean along the X axis
- fBodyAccelerationJerk-mean Y Direction: the average value for the given activity and subject of the FFT applied to body acceleration Jerk signal mean along the Y axis
- fBodyAccelerationJerk-mean Z Direction: the average value for the given activity and subject of the FFT applied to body acceleration Jerk signal mean along the Z axis
- fBodyAccelerationJerk-std X Direction: the average value for the given activity and subject of the FFT applied to body acceleration Jerk signal standard deviation along the X axis
- fBodyAccelerationJerk-std Y Direction: the average value for the given activity and subject of the FFT applied to body acceleration Jerk signal standard deviation along the Y axis
- fBodyAccelerationJerk-std Z Direction: the average value for the given activity and subject of the FFT applied to body acceleration Jerk signal standard deviation along the Z axis
- fBodyGyro-mean X Direction: the average value for the given activity and subject of the FFT applied to body angular velocity mean along the X axis
- fBodyGyro-mean Y Direction: the average value for the given activity and subject of the FFT applied to body angular velocity mean along the Y axis
- fBodyGyro-mean Z Direction: the average value for the given activity and subject of the FFT applied to body angular velocity mean along the Z axis
- fBodyGyro-std X Direction: the average value for the given activity and subject of the FFT applied to body angular velocity standard deviation along the X axis
- fBodyGyro-std Y Direction: the average value for the given activity and subject of the FFT applied to body angular velocity standard deviation along the Y axis
- fBodyGyro-std Z Direction: the average value for the given activity and subject of the FFT applied to body angular velocity standard deviation along the Z axis
- fBodyAccelerationMagnitude-mean: the average value for the given activity and subject of the mean of the FFT applied to body acceleration magnitude
- fBodyAccelerationMagnitude-std: the average value for the given activity and subject of the standard deviation of the FFT applied to body acceleration magnitude
- fBodyBodyAccelerationJerkMagnitude-mean: the average value for the given activity and subject of the mean of the FFT applied to body acceleration Jerk signal magnitude
- fBodyBodyAccelerationJerkMagnitude-std: the average value for the given activity and subject of the standard deviation of the FFT applied to body acceleration Jerk signal magnitude
- fBodyBodyGyroMagnitude-mean: the average value for the given activity and subject of the mean of the FFT applied to body linear velocity magnitude
- fBodyBodyGyroMagnitude-std: the average value for the given activity and subject of the standard deviation of the FFT applied to body linear velocity magnitude
- fBodyBodyGyroJerkMagnitude-mean: the average value for the given activity and subject of the mean of the FFT applied to body linear velocity Jerk signal magnitude
- fBodyBodyGyroJerkMagnitude-std: the average value for the given activity and subject of the standard deviation of the FFT applied to body linear velocity Jerk signal magnitude

# 2. The analysis
We were asked to extract "_only the measurements on the mean and standard deviation for each measurement_", so we considered only the features which names included "mean()" or "std()". This is based on the original code book which states:
_mean(): Mean value_ and _std(): Standard deviation_.
+ # Explaining the script code:
  - First we load the _dplyr_ package which provides several useful fucntions, such as `group_by` and `summarize_each`
  - We define the main fucntion `run_analysis` which calls other functions to perform different tasks. It takes the path to the data directory.
  - the `mergeData` function This functions reads the two data sets (training and test) and merges them by rows
  - the `getMeansAndStdsIndices` This function extracts a data frame of mean&std features names and indices. It takes as arg the directory where the features.txt. We use the regular expression `mean\\(\\)|std\\(\\)` so that we only select the features that contain _mean()_ and _std()_
  - the `extractMeanAndStd` extracts the given columns (based on their given indices)
  - the `labelActivities` reads the _activity_labels.txt_ file, and maps each activity code to a more readable label. E.g.: _WALKING_UPSTAIRS_ is mapped to _Walking Upstairs_. And then it merges the activity files (train and test) and finally it maps each activity value to the corresponding label, e.g: "6" is replaced with _Laying_
  - the `addColumnLabels` reads the _labels.txt_ file (to be loaded with the script in the working directory) and rename the data frame columns with the values from this file
  - Finally we read the subjects files (_subject_train.txt_ and _subject_test.txt_), merge them by rows and add them to our data frame. After that, we use the `group_by` function to group values by activity and by subject. And to get the final tidy data we call `summarise_each` that applies the given function (_mean_ in our case) to each column.
