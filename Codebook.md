---
title: "CodeBook"
author: "AK"
date: "30 December 2018"
output: md_document
---
# Codebook

## Data capture and processing
Using Samsung galaxy S II embedded accelerometer and gyroscope 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz of 30 volunteers performing 6 tasks (walking, walking_upstairs, walking_downstairs, sitting, standing and laying) was captured. The data was labelled manually using video recordings and randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals Time-Accelerometer-XYZ and Time-Gyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (Time-BodyAccelerometer-XYZ and Time-GravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (Time-BodyAccelerometerJerk-XYZ and Time-BodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (Time-BodyAccelerometerMagnitude, Time-GravityAccelerometerMagnitude, Time-BodyAccelerometerJerkMagnitude, Time-BodyGyroscopeMagnitude, Time-BodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing Frequency-BodyAccelerometer-XYZ, Frequency-BodyAccelerometerJerk-XYZ, Frequency-BodyGyroscope-XYZ, Frequency-BodyAccelerometerJerkMagnitude, Frequency-BodyGyroscopeMagnitude, Frequency-BodyGyroscopeJerkMagnitude. (Note the 'f' to indicate frequency domain signals). 

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* ``` Time-BodyAccelerometer-XYZ```

* ``` Time-GravityAccelerometer-XYZ```

* ``` Time-BodyAccelerometerJerk-XYZ```

* ``` Time-BodyGyroscope-XYZ```

* ``` Time-BodyGyroscopeJerk-XYZ```

* ``` Time-BodyAccelerometerMagnitude```

* ``` Time-GravityAccelerometerMagnitude```

* ``` Time-BodyAccelerometerJerkMagnitude```

* ``` Time-BodyGyroscopeMagnitude```

* ``` Time-BodyGyroscopeJerkMagnitude```

* ``` Frequency-BodyAccelerometer-XYZ```

* ``` Frequency-BodyAccelerometerJerk-XYZ```

* ``` Frequency-BodyGyroscope-XYZ```

* ``` Frequency-BodyAccelerometerMagnitude```

The set of variables that were estimated from these signals are: 

* ```Mean()```: Mean value

* ```StDev()```: Standard deviation

The set of identifiers used:

```Subject``` : Subject ID ranging from 1 to 30
```Activity```: Activity ID representing performed action while the recording was taken

## Files used

The R script reads the data from the following files:

```UCI HAR Dataset/activity_labels.txt```, 
```UCI HAR Dataset/features.txt```,

```UCI HAR Dataset/train/X_train.txt```,
```UCI HAR Dataset/train/y_train.txt```,
```UCI HAR Dataset/train/subject_train.txt```

```UCI HAR Dataset/test/X_test.txt```,
```UCI HAR Dataset/test/y_test.txt```,
```UCI HAR Dataset/test/subject_test.txt```


## Variables and units

Units: time (```Time-```) measurements were made in radians per sec, frequency (```Frequency-```) in Hertz.

The averages of the following values can be found for each Activity and Subject:

* ```Time-BodyAccelerometerMean()-X```

* ```Time-BodyAccelerometerMean()-Y```

* ```Time-BodyAccelerometerMean()-Z```

* ```Time-BodyAccelerometerStDev()-X```

* ```Time-BodyAccelerometerStDev()-Y```

* ```Time-BodyAccelerometerStDev()-Z```

* ```Time-GravityAccelerometerMean()-X```

* ```Time-GravityAccelerometerMean()-Y```

* ```Time-GravityAccelerometerMean()-Z```

* ```Time-GravityAccelerometerStDev()-X```

* ```Time-GravityAccelerometerStDev()-Y```

* ```Time-GravityAccelerometerStDev()-Z```

* ```Time-BodyAccelerometerJerkMean()-X```

* ```Time-BodyAccelerometerJerkMean()-Y```

* ```Time-BodyAccelerometerJerkMean()-Z```

* ```Time-BodyAccelerometerJerkStDev()-X```

* ```Time-BodyAccelerometerJerkStDev()-Y```

* ```Time-BodyAccelerometerJerkStDev()-Z```

* ```Time-BodyGyroscopeMean()-X```

* ```Time-BodyGyroscopeMean()-Y```

* ```Time-BodyGyroscopeMean()-Z```

* ```Time-BodyGyroscopeStDev()-X```

* ```Time-BodyGyroscopeStDev()-Y```

* ```Time-BodyGyroscopeStDev()-Z```

* ```Time-BodyGyroscopeJerkMean()-X```

* ```Time-BodyGyroscopeJerkMean()-Y```

* ```Time-BodyGyroscopeJerkMean()-Z```

* ```Time-BodyGyroscopeJerkStDev()-X```

* ```Time-BodyGyroscopeJerkStDev()-Y```

* ```Time-BodyGyroscopeJerkStDev()-Z```

* ```Time-BodyAccelerometerMagnitudeMean()```

* ```Time-BodyAccelerometerMagnitudeStDev()```

* ```Time-GravityAccelerometerMagnitudeMean()```

* ```Time-GravityAccelerometerMagnitudeStDev()```

* ```Time-BodyAccelerometerJerkMagnitudeMean()```

* ```Time-BodyAccelerometerJerkMagnitudeStDev()```

* ```Time-BodyGyroscopeMagnitudeMean()```

* ```Time-BodyGyroscopeMagnitudeStDev()```

* ```Time-BodyGyroscopeJerkMagnitudeMean()```

* ```Time-BodyGyroscopeJerkMagnitudeStDev()```

* ```Frequency-BodyAccelerometerMean()-X```

* ```Frequency-BodyAccelerometerMean()-Y```

* ```Frequency-BodyAccelerometerMean()-Z```

* ```Frequency-BodyAccelerometerStDev()-X```

* ```Frequency-BodyAccelerometerStDev()-Y```

* ```Frequency-BodyAccelerometerStDev()-Z```

* ```Frequency-BodyAccelerometerJerkMean()-X```

* ```Frequency-BodyAccelerometerJerkMean()-Y```

* ```Frequency-BodyAccelerometerJerkMean()-Z```

* ```Frequency-BodyAccelerometerJerkStDev()-X```

* ```Frequency-BodyAccelerometerJerkStDev()-Y```

* ```Frequency-BodyAccelerometerJerkStDev()-Z```

* ```Frequency-BodyGyroscopeMean()-X```

* ```Frequency-BodyGyroscopeMean()-Y```

* ```Frequency-BodyGyroscopeMean()-Z```

* ```Frequency-BodyGyroscopeStDev()-X```

* ```Frequency-BodyGyroscopeStDev()-Y```

* ```Frequency-BodyGyroscopeStDev()-Z```

* ```Frequency-BodyAccelerometerMagnitudeMean()```

* ```Frequency-BodyAccelerometerMagnitudeStDev()```

* ```Frequency-BodyBodyAccelerometerJerkMagnitudeMean()```

* ```Frequency-BodyBodyAccelerometerJerkMagnitudeStDev()```

* ```Frequency-BodyBodyGyroscopeMagnitudeMean()```

* ```Frequency-BodyBodyGyroscopeMagnitudeStDev()```

* ```Frequency-BodyBodyGyroscopeJerkMagnitudeMean()```

* ```Frequency-BodyBodyGyroscopeJerkMagnitudeStDev()```




