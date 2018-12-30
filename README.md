---
title: "ReadMe"
author: "AK"
date: "29 December 2018"
output: md_document
---
# Getting and Cleaning Data Course Project

This is the final project for the Coursera course 'Getting and Cleaning Data'. The project takes advantage of Human Activity Recognition Using Smartphones dataset, the full description of which can be found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The course project utilises the data found at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip to enquire into student's ability to get and clean data :)

## About the dataset

Wearable computing represents one of the rising consumer trends in current day economy, generating ever-increasing amounts of consumer data. The recent explosion in the field of data science has enabled the harvesting of these data for the benefit of scientific enquiry, as well as supplier and consumer intelligence. The dataset presented in this project was collected and used by a group of researchers for Computational Intelligence and Data Analytic methods.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data [1].

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

## About the files
```Run_analysis.R``` contains the script used to tidy up the dataset and produce the tidy data table.
```Codebook.md``` contains the information about all the variables in the output dataset.
```tidydata.txt``` contains the output dataset and has been uploaded to the Coursera project directory, it should be read in using ```{R} read.table("tidydata.txt", header = TRUE, check.names = FALSE)```

## About the script
File ```Run_analysis.R``` entails an R script that assumes that you download, unzip and continue to work in a pre-set working directory. The R script uses ```library(data.table)``` and ```library(dplyr)``` libraries and performs 5 functions:

1. Merges the training and the test sets to create one data set
 
    1.1 Downloads and unzips the datasets  
  
    1.2 Lists all of the files in the folder
    
    1.3 Reads in a feature table
   
    1.4 Creates a training dataset 
      
      1.4.1 Reads training data tables 
        
      1.4.2 Forms a dataset
  
    1.5 Creates a test dataset
      
      1.5.1 Reads test data tables
      
      1.5.2 Foms a dataset
    
    1.6 Concatenates the two datasets

2. Extracts only the measurements on the mean and standard deviation for each measurement

    2.1 Creates a vector that selects for mean (mean()) and stadart deviation (sd()) as well as subject ID (Subject) and Activity (ID). 
    
    2.2 Makes the subset of the data
    
3. Uses descriptive activity names to name the activities in the data set

    3.1 Reads activity label data table
    
    3.2 Adds the activity labels to the dataset
    
4. Appropriately labels the data set with descriptive variable names.

    4.1 Creates a vector that modifies the currently abbreviated column names to expand them to include full information
    
    4.2 Assigns the new names to the data table, removes the ID identifier

5. Creates a tidy data set with the average of each variable for each activity and each subject.
    
    5.1 Aggregates data by Subject and Activity and calculates mean values
    
    5.2 Writes tidydata.txt data table 
    