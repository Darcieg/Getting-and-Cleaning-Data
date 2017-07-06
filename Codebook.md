The data was transformed as follows, with the script run_analysis.R:

All of the data files under UCI Har Dataset were read into tables, excluding the files in the Inertial Signals directories, as it was determined that the data in those files were not necessary to include in the final tidy data set. The following files were read into tables using the space delimiter
1. features.txt
2. activity_labels.txt
3. train\subject_train.txt
4. test\subject_test.txt
5. train\y_train.txt
6. test\y_test.txt

train\x_train.txt and test\x_test.txt contained both single and double spaces as delimiters, so the double spaces were first replaced with single spaces, and then the files were read into tables using the space delimiter.

Per the instructions, the test and train tables were merged. Since each test-train pair contained the same type of data in the same order, with the same column headers and the same numbers of rows and columns, r-bind was used to merge the following test-train pairs:
1. yTrainTable, yTestTable
2. subjectTrainTable, subjectTestTable
3. xTrainTable, xTestTable

Since the first column of the merged xTable contained only NA values, it was removed.

Next, the columns of the merged xTable were renamed with the elements of the second column of the feature table.

The data contained in the subject tables were numerical IDs of each of the 30 participants, so the column header of the single-column  subjectTablesMerged was renamed to "subjectId."
Similarly, the data contained in the y tables were numerical IDs of each of the 6 activities, so the column header of the single-column  yTablesMerged was renamed to "activityId."

The columns of the subjectTablesMerged and yTablesMerged were then added to the merged xTable as the leftmost two columns. 

The numerical activity IDs in the newly merged table were renamed according to the data in the activityLabels table to:
1. walking
2. walkingupstairs
3. walkingdownstairs
4. sitting
5. standing
6. lying down (switched from the original "laying" for grammatical correctness)

Next, the table was pared down to contain--in addition to the subject ID and activity ID--only columns that contained the strings "mean" or "stddev." This was my interpretation of the instruction to extract only the measurements on the mean and standard deviation for each measurement.

Then, the summarise_if function was used to take the mean of all of the values for each measurement, grouped by subjectId and then activityId, rendering the data in tidy, wide format: each variable in columns 3:88 is an independent measure of an activity/subject action. (See https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/ for discussion on wide vs narrow tidy data.)

Next, the variable columns were renamed to be more descriptive. The tables below define some of the terms used and lay out the column names and their descriptions.



## Terms Used

| |Token|Description|
|--- |--- |--- |
|1|Acc|Measurement taken from the accelerometer of the phone|
|2|Angle|The angle between two vectors|
|3|Body|Signal based on the body of an experiment participant; one of the two components derived from the time-based signals on the phone's accelerometer|
|4|Freq|Measurement based on the "frequency" domain, taken as a Fast Fourier Transform of the time-based signals. A time-based graph shows how a signal changes over time, whereas a frequency-domain graph shows how much of the signal lies within each given frequency band over a range of frequencies|
|5|Gravity|Signal based on gravity, the force that attracts a body towards the center of the Earth. Gravity is the second of the two measurement components derived from the phone's accelerometer.|
|6|Gyro|Measurement taken from the gyroscope on the phone.|
|7|Jerk|Measurement of sudden movement, based on body acceleration and angular velocity.|


## Tidy Data Set column positions, names, and descriptions
|columnPosition|columnName|type|description|
|--- |--- |--- |--- |
|1|subjectId|integer|Numeric identifier (a unique sequential number) that indicates the participant or subject of the experiment. The original research study included 30 participants, so this variable has a range of numeric values from 1-30. No further information beyond an ID number was provided by the original research team.|
|2|activityId|character|Character string describing one of six different activities that were performed by participants in the experiment, consisting of: Lying down (name changed from "laying" for grammatical correctness); Sitting; Standing; Walking; Walking downstairs; Walking upstairs|
|3|meanOfTimeBodyAccMeanX|double|Numeric variable measuring the mean of all of the time-domain body accelerometer signal means in the X dimension of the phone|
|4|meanOfTimeBodyAccMeanY|double|Numeric variable measuring the mean of all of the time-domain body accelerometer signal means in the Y dimension of the phone|
|5|meanOfTimeBodyAccMeanZ|double|Numeric variable measuring the mean of all of the time-domain body accelerometer signal means in the Z dimension of the phone|
|6|meanOfTimeGravityAccMeanX|double|Numeric variable measuring the mean of all of the time-domain gravity accelerometer signal means in the X dimension of the phone|
|7|meanOfTimeGravityAccMeanY|double|Numeric variable measuring the mean of all of the time-domain gravity accelerometer signal means in the Y dimension of the phone|
|8|meanOfTimeGravityAccMeanZ|double|Numeric variable measuring the mean of all of the y time-domain gravity accelerometer signal means in the Z dimension of the phone|
|9|meanOfTimeBodyAccJerkMeanX|double|Numeric variable measuring the mean of all of the time-domain body jerk accelerometer signal means in the X dimension of the phone|
|10|meanOfTimeBodyAccJerkMeanY|double|Numeric variable measuring the mean of all of the time-domain body jerk accelerometer signal means in the Y dimension of the phone|
|11|meanOfTimeBodyAccJerkMeanZ|double|Numeric variable measuring the mean of all of the time-domain body  jerk accelerometer signal means in the Z dimension of the phone|
|12|meanOfTimeBodyGyroMeanX|double|Numeric variable measuring the mean of all of the time-domain body gyroscope signal means in the X dimension of the phone|
|13|meanOfTimeBodyGyroMeanY|double|Numeric variable measuring the mean of all of the time-domain body gyroscope signal means in the Y dimension of the phone|
|14|meanOfTimeBodyGyroMeanZ|double|Numeric variable measuring the mean of all of the time-domain body gyroscope signal means in the Z dimension of the phone|
|15|meanOfTimeBodyGyroJerkMeanX|double|Numeric variable measuring the mean of all of the time-domain body jerk gyroscope signal means in the X dimension of the phone|
|16|meanOfTimeBodyGyroJerkMeanY|double|Numeric variable measuring the mean of all of the time-domain body jerk gyroscope signal means in the Y dimension of the phone|
|17|meanOfTimeBodyGyroJerkMeanZ|double|Numeric variable measuring the mean of all of the time-domain body jerk gyroscope signal means in the Z dimension of the phone|
|18|meanOfTimeBodyAccMagMean|double|Numeric variable measuring the mean of all of the the magnitude (calculated using the Euclidean norm) of time-domain body accelerometer signal means|
|19|meanOfTimeGravityAccMagMean|double|Numeric variable measuring the mean of all of the the magnitude (calculated using the Euclidean norm) of time-domain gravity accelerometer signal measurement means|
|20|meanOfTimeBodyAccJerkMagMean|double|Numeric variable measuring the mean of all of the the magnitude (calculated using the Euclidean norm) of time-domain body jerk accelerometer signal means|
|21|meanOfTimeBodyGyroMagMean|double|Numeric variable measuring the mean of all of the the magnitude (calculated using the Euclidean norm) of time-domain body  gyroscope signal means|
|22|meanOfTimeBodyGyroJerkMagMean|double|Numeric variable measuring the mean of all of the the magnitude (calculated using the Euclidean norm) of time-domain body jerk gyroscope signal means|
|23|meanOfFreqBodyAccMeanX|double|Numeric variable measuring the mean of all of the frequency-domain body accelerometer signal means in the X dimension of the phone|
|24|meanOfFreqBodyAccMeanY|double|Numeric variable measuring the mean of all of the frequency-domain body accelerometer signal means in the Y dimension of the phone|
|25|meanOfFreqBodyAccMeanZ|double|Numeric variable measuring the mean of all of the frequency-domain body accelerometer signal means in the Z dimension of the phone|
|26|meanOfFreqBodyAccMeanFreqX|double|Numeric variable measuring the mean of all of the frequency-domain body accelerometer signal frequency means in the X dimension of the phone|
|27|meanOfFreqBodyAccMeanFreqY|double|Numeric variable measuring the mean of all of the frequency-domain body accelerometer signal frequency means in the Y dimension of the phone|
|28|meanOfFreqBodyAccMeanFreqZ|double|Numeric variable measuring the mean of all of the frequency-domain body accelerometer signal frequency means in the Z dimension of the phone|
|29|meanOfFreqBodyAccJerkMeanX|double|Numeric variable measuring the mean of all of the frequency-domain body jerk accelerometer signal means in the X dimension of the phone|
|30|meanOfFreqBodyAccJerkMeanY|double|Numeric variable measuring the mean of all of the frequency-domain body jerk accelerometer signal means in the Y dimension of the phone|
|31|meanOfFreqBodyAccJerkMeanZ|double|Numeric variable measuring the mean of all of the frequency-domain body jerk accelerometer signal means in the Z dimension of the phone|
|32|meanOfFreqBodyAccJerkMeanFreqX|double|Numeric variable measuring the mean of all of the frequency-domain body jerk accelerometer signal frequency means in the X dimension of the phone|
|33|meanOfFreqBodyAccJerkMeanFreqY|double|Numeric variable measuring the mean of all of the frequency-domain body jerk accelerometer signal frequency means in the Y dimension of the phone|
|34|meanOfFreqBodyAccJerkMeanFreqZ|double|Numeric variable measuring the mean of all of the frequency-domain body jerk accelerometer signal frequency means in the Z dimension of the phone|
|35|meanOfFreqBodyGyroMeanX|double|Numeric variable measuring the mean of all of the frequency-domain body gyroscope signal means in the X dimension of the phone|
|36|meanOfFreqBodyGyroMeanY|double|Numeric variable measuring the mean of all of the frequency-domain body gyroscope signal means in the Y dimension of the phone|
|37|meanOfFreqBodyGyroMeanZ|double|Numeric variable measuring the mean of all of the frequency-domain body gyroscope signal means in the Z dimension of the phone|
|38|meanOfFreqBodyGyroMeanFreqX|double|Numeric variable measuring the mean of all of the frequency-domain body gyroscope signal frequency means in the X dimension of the phone|
|39|meanOfFreqBodyGyroMeanFreqY|double|Numeric variable measuring the mean of all of the frequency-domain body gyroscope signal frequency means in the Y dimension of the phone|
|40|meanOfFreqBodyGyroMeanFreqZ|double|Numeric variable measuring the mean of all of the frequency-domain body gyroscope signal frequency means in the Z dimension of the phone|
|41|meanOfFreqBodyAccMagMean|double|Numeric variable measuring the mean of all of the the magnitude (calculated using the Euclidean norm) of frequency-domain body accelerometer signal means|
|42|meanOfFreqBodyAccMagMeanFreq|double|Numeric variable measuring the mean of all of the the magnitude (calculated using the Euclidean norm) of frequency-domain body accelerometer signal frequency means|
|43|meanOfFreqBodyBodyAccJerkMagMean|double|Numeric variable measuring the mean of all of the the magnitude (calculated using the Euclidean norm) of frequency-domain body jerk accelerometer signal means|
|44|meanOfFreqBodyBodyAccJerkMagMeanFreq|double|Numeric variable measuring the mean of all of the the magnitude (calculated using the Euclidean norm) of frequency-domain body jerk accelerometer signal frequency means|
|45|meanOfFreqBodyBodyGyroMagMean|double|Numeric variable measuring the mean of all of the the magnitude (calculated using the Euclidean norm) of frequency-domain body  gyroscope signal means|
|46|meanOfFreqBodyBodyGyroMagMeanFreq|double|Numeric variable measuring the mean of all of the the magnitude (calculated using the Euclidean norm) of frequency-domain body  gyroscope signal frequency means|
|47|meanOfFreqBodyBodyGyroJerkMagMean|double|Numeric variable measuring the mean of all of the the magnitude (calculated using the Euclidean norm) of frequency-domain body jerk gyroscope signal means|
|48|meanOfFreqBodyBodyGyroJerkMagMeanFreq|double|Numeric variable measuring the mean of all of the the magnitude (calculated using the Euclidean norm) of frequency-domain body jerk gyroscope signal frequency means|
|49|meanOfAngleTimeBodyAccMeanGravity|double|Numeric variable measuring the mean of the means of the angles between additional vectors obtained by averaging the time-domain body gravity accelerometer signals in a signal window sample|
|50|meanOfAngleTimeBodyAccJerkMeanGravityMean|double|Numeric variable measuring the mean of the means of the angles between additional vectors obtained by averaging the time-domain body gravity accelerometer jerk signals in a signal window sample|
|51|meanOfAngleTimeBodyGyroMeanGravityMean|double|Numeric variable measuring the mean of the means of the angles between additional vectors obtained by averaging the time-domain body gravity gyroscope signals in a signal window sample|
|52|meanOfAngleTimeBodyGyroJerkMeanGravityMean|double|Numeric variable measuring the mean of the means of the angles between additional vectors obtained by averaging the time-domain body gravity gyroscope jerk signals in a signal window sample|
|53|meanOfAngleXGravityMean|double|Numeric variable measuring the mean of the X vector obtained averaging the gravity signals in a signal window sample. No explanation given in the features_info file how the angle between two vectors is measured, since each X vector should be the same direction|
|54|meanOfAngleYGravityMean|double|Numeric variable measuring the mean of the Y vector obtained averaging the gravity signals in a signal window sample. No explanation given in the features_info file how the angle between two vectors is measured, since each Y vector should be the same direction|
|55|meanOfAngleZGravityMean|double|Numeric variable measuring the mean of the Z vector obtained averaging the gravity signals in a signal window sample. No explanation given in the features_info file how the angle between two vectors is measured, since each Z vector should be the same direction|
|56|meanOfTimeBodyAccStdX|double|Numeric variable measuring the mean of all of the time-domain body accelerometer signal standard deviations in the X dimension of the phone|
|57|meanOfTimeBodyAccStdY|double|Numeric variable measuring the mean of all of the time-domain body accelerometer signal standard deviations in the Y dimension of the phone|
|58|meanOfTimeBodyAccStdZ|double|Numeric variable measuring the mean of all of the time-domain body accelerometer signal standard deviations in the Z dimension of the phone|
|59|meanOfTimeGravityAccStdX|double|Numeric variable measuring the mean of all of the time-domain gravity accelerometer signal standard deviations in the X dimension of the phone|
|60|meanOfTimeGravityAccStdY|double|Numeric variable measuring the mean of all of the time-domain gravity accelerometer signal standard deviations in the Y dimension of the phone|
|61|meanOfTimeGravityAccStdZ|double|Numeric variable measuring the mean of all of the time-domain gravity accelerometer signal standard deviations in the Z dimension of the phone|
|62|meanOfTimeBodyAccJerkStdX|double|Numeric variable measuring the mean of all of the time-domain body jerk accelerometer signal standard deviations in the X dimension of the phone|
|63|meanOfTimeBodyAccJerkStdY|double|Numeric variable measuring the mean of all of the time-domain body jerk accelerometer signal standard deviations in the Y dimension of the phone|
|64|meanOfTimeBodyAccJerkStdZ|double|Numeric variable measuring the mean of all of the time-domain body jerk accelerometer signal standard deviations in the Z dimension of the phone|
|65|meanOfTimeBodyGyroStdX|double|Numeric variable measuring the mean of all of the time-domain body gyroscope signal standard deviations in the X dimension of the phone|
|66|meanOfTimeBodyGyroStdY|double|Numeric variable measuring the mean of all of the time-domain body gyroscope signal standard deviations in the Y dimension of the phone|
|67|meanOfTimeBodyGyroStdZ|double|Numeric variable measuring the mean of all of the time-domain body gyroscope signal standard deviations in the Z dimension of the phone|
|68|meanOfTimeBodyGyroJerkStdX|double|Numeric variable measuring the mean of all of the time-domain body jerk gyroscope signal standard deviations in the X dimension of the phone|
|69|meanOfTimeBodyGyroJerkStdY|double|Numeric variable measuring the mean of all of the time-domain body jerk gyroscope signal standard deviations in the Y dimension of the phone|
|70|meanOfTimeBodyGyroJerkStdZ|double|Numeric variable measuring the mean of all of the time-domain body jerk gyroscope signal standard deviations in the Z dimension of the phone|
|71|meanOfTimeBodyAccMagStd|double|Numeric variable measuring the mean of all of the the magnitude (calculated using the Euclidean norm) of time-domain body accelerometer signal standard deviations|
|72|meanOfTimeGravityAccMagStd|double|Numeric variable measuring the mean of all of the the magnitude (calculated using the Euclidean norm) of time-domain gravity accelerometer signal measurement standard deviations|
|73|meanOfTimeBodyAccJerkMagStd|double|Numeric variable measuring the mean of all of the the magnitude (calculated using the Euclidean norm) of time-domain body jerk accelerometer signal standard deviations|
|74|meanOfTimeBodyGyroMagStd|double|Numeric variable measuring the mean of all of the the magnitude (calculated using the Euclidean norm) of time-domain body  gyroscope signal standard deviations|
|75|meanOfTimeBodyGyroJerkMagStd|double|Numeric variable measuring the mean of all of the the magnitude (calculated using the Euclidean norm) of time-domain body jerk gyroscope signal standard deviations|
|76|meanOfFreqBodyAccStdX|double|Numeric variable measuring the mean of all of the frequency-domain body accelerometer signal standard deviations in the X dimension of the phone|
|77|meanOfFreqBodyAccStdY|double|Numeric variable measuring the mean of all of the frequency-domain body accelerometer signal standard deviations in the Y dimension of the phone|
|78|meanOfFreqBodyAccStdZ|double|Numeric variable measuring the mean of all of the frequency-domain body accelerometer signal standard deviations in the Z dimension of the phone|
|79|meanOfFreqBodyAccJerkStdX|double|Numeric variable measuring the mean of all of the frequency-domain body jerk accelerometer signal standard deviations in the X dimension of the phone|
|80|meanOfFreqBodyAccJerkStdY|double|Numeric variable measuring the mean of all of the frequency-domain body jerk accelerometer signal standard deviations in the Y dimension of the phone|
|81|meanOfFreqBodyAccJerkStdZ|double|Numeric variable measuring the mean of all of the frequency-domain body jerk accelerometer signal standard deviations in the Z dimension of the phone|
|82|meanOfFreqBodyGyroStdX|double|Numeric variable measuring the mean of all of the frequency-domain body gyroscope signal standard deviations in the X dimension of the phone|
|83|meanOfFreqBodyGyroStdY|double|Numeric variable measuring the mean of all of the frequency-domain body gyroscope signal standard deviations in the Y dimension of the phone|
|84|meanOfFreqBodyGyroStdZ|double|Numeric variable measuring the mean of all of the frequency-domain body gyroscope signal standard deviations in the Z dimension of the phone|
|85|meanOfFreqBodyAccMagStd|double|Numeric variable measuring the mean of all of the the magnitude (calculated using the Euclidean norm) of frequency-domain body accelerometer signal standard deviations|
|86|meanOfFreqBodyBodyAccJerkMagStd|double|Numeric variable measuring the mean of all of the the magnitude (calculated using the Euclidean norm) of frequency-domain body jerk accelerometer signal standard deviations|
|87|meanOfFreqBodyBodyGyroMagStd|double|Numeric variable measuring the mean of all of the the magnitude (calculated using the Euclidean norm) of frequency-domain body  gyroscope signal standard deviations|
|88|meanOfFreqBodyBodyGyroJerkMagStd|double|Numeric variable measuring the mean of all of the the magnitude (calculated using the Euclidean norm) of frequency-domain body jerk gyroscope signal standard deviations|


## Reference to ReadMe included in the original data set
Since the original ReadMe is not required to be submitted, its contents are pasted below to provide more background on the testing methods:

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
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

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

