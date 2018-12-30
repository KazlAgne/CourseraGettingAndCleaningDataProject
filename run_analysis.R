library(data.table)
library(dplyr)

# 1.1 Download and unzip the dataset
download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip', 'dataset.zip') 
unzip('dataset.zip')

# 1.2 List .txt files in the unzipped directory 
Paths <- lapply(list.files("UCI HAR Dataset", pattern = ".txt$", recursive = TRUE), function(x){
  F <- list.files(x) 
  paste0('UCI HAR Dataset/',x,F)
})

# 1.3 Read in features table 
features <- t(read.table("UCI HAR Dataset/features.txt", header = FALSE))

  # 1.4.1 Read data tables of a training dataset
Training_Dataset <- read.table("UCI HAR Dataset/train/X_train.txt", dec = ".")
Subject <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names =  "Subject")
Training_Label <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "ID")

  # 1.4.2 Assign column names and create a training dataset 
colnames(Training_Dataset) <- features[2,]
Training_Dataset <- cbind(Training_Dataset, Subject, Training_Label)

  # 1.5.1 Read data tables of the test dataset
Test_Dataset <- read.table("UCI HAR Dataset/test/X_test.txt", dec = ".")
Test_Subject <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "Subject")
Test_Training_Label <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "ID")

  # 1.5.2 Assign column names and create a test dataset
colnames(Test_Dataset) <- features[2,]
Test_Dataset <- cbind(Test_Dataset, Test_Subject, Test_Training_Label)

# 1.6 Create a list of datasets and row-bind them into a Completedataset
datasets <- lapply(c('Test_Dataset', 'Training_Dataset'), get)
Complete <- rbindlist(datasets, use.names = TRUE)

# 2.1 Create a vector to select mean, standart deviation and ID columns(Subject, ID and Function) 
meanstdv <- grep("mean\\()|std\\()|Subject|ID|Function", colnames(Complete))
meanstdv <- c(meanstdv)

# 2.2 Create data frame containg mean and stdv values
CompleteSubset <- subset(Complete, select=meanstdv)

# 3.1 Read activity labels table
Activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("ID", "Activity"))

# 3.2 Add activity labels to the table
CompleteSubset <- merge(CompleteSubset, Activity_labels, by = "ID", sort = FALSE)

# 4.1 Create meaningful labels
names <- names(CompleteSubset)
names2 <- gsub("^t", "Time-", names)
names2 <- gsub("^f", "Frequency-", names2)
names2 <- gsub("Acc", "Accelerometer", names2)
names2 <- gsub("Mag", "Magnitude", names2)
names2 <- gsub("Gyro", "Gyroscope", names2)
names2 <- gsub(".mean", "Mean", names2)
names2 <- gsub(".std", "StDev", names2)

# 4.2 Rename the columns with meaningful labels, rearrange their sequence so that identifiers are on the left hand side, remove the ID identifier
CompleteSubset <- setnames(CompleteSubset, old = names, new = names2)
CompleteSubset <- CompleteSubset[, c(1, 69, 68, 2:67)]
CompleteSubset <- CompleteSubset[,!1]

# 5.1 Aggregates data by set conditions and calculates mean value for each
tidy_data <- aggregate(. ~Subject + Activity, CompleteSubset, mean)
tidy_data <- arrange(tidy_data, Activity, Subject)

# 5.2 Create a new tidy table
write.table(tidy_data, "tidydata.txt", row.names = FALSE)