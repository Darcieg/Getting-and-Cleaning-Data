
| |Token|Description|
|--- |--- |--- |
|1|Acc|Measurement taken from the accelerometer of the phone|
|2|Angle|The angle between two vectors|
|3|Body|Signal based on the body of an experiment participant; one of the two components derived from the time-based signals on the phone's accelerometer|
|4|Freq|Measurement based on the "frequency" domain, taken as a Fast Fourier Transform of the time-based signals. A time-based graph shows how a signal changes over time, whereas a frequency-domain graph shows how much of the signal lies within each given frequency band over a range of frequencies|
|5|Gravity|Signal based on gravity, the force that attracts a body towards the center of the Earth. Gravity is the second of the two measurement components derived from the phone's accelerometer.|
|6|Gyro|Measurement taken from the gyroscope on the phone.|
|7|Jerk|Measurement of sudden movement, based on body acceleration and angular velocity.|

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
