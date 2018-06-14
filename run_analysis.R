### 1.Merges the training and the test sets to create one data set.
#setwd to train folder
#read the train files
subject_train <- read.table("subject_train.txt",header = F)
x_train <- read.table("X_train.txt" ,header = F)
y_train <- read.table("y_train.txt",header=F)

#setwd to test folder
#read the test files
subject_test <- read.table("subject_test.txt",header = F)
x_test <- read.table("X_test.txt",header=F)
y_test <- read.table("y_test.txt",header=F)

#check dim for each file(test) to see files to merge 
dim(subject_test)
dim(x_test)
dim(y_test)
#check dim for each file(train) to see files to merge 
dim(subject_train)
dim(x_train)
dim(y_train)

#combine  the test and train files as:-
subject <- rbind(subject_test,subject_train)
x_data <- rbind(x_test,x_train)    # 561 column
y_data <- rbind(y_test,y_train)  
#combine these  2 files together as:-
set <-  cbind(subject,y_data)       
#note x_data will be combined in line 43 

### 2.Extracts only the measurements on the mean and standard deviation for each measurement.
#setwd to "UCI HAR Dataset" folder
#read features.txt file
features <- read.table("features.txt",header = F)     #561 rows

#select column number where mean and std can be found 
extract <- grep("-mean\\(\\)|-std\\(\\)",features[,2])

#extract column used to extract data frame from x_data
step2 <- x_data[,extract]

#now merge set and step2output
step2output <-  cbind(set,step2)
#dim(set)
#[1] 10299   68

### 4.Appropriately labels the data set with descriptive variable names
names(step2output)[1] <- "subject"
names(step2output)[2] <- "activity"

### 3.Uses descriptive activity names to name the activities in the data set
labels <- read.table("activity_labels.txt",header = F)

#this will change the column containg 1:6 ID with names 
step2output$activity <- labels$V2[match(step2output$activity,labels$V1)]

###4 Appropriately labels the data set with descriptive variable names
#store the names to change for x_data
x_data_names <- as.character(features[extract,2])

#making dataset more tidy:-
x_data_names <- tolower(x_data_names)
x_data_names <- sub("^t","time",x_data_names)
x_data_names <- sub("^f","freq",x_data_names)
x_data_names <- sub("bodybody","body",x_data_names)
x_data_names <- sub("\\()","",x_data_names)
x_data_names <- sub("\\-","",x_data_names)
x_data_names <- sub("\\-","_",x_data_names)

names(step2output)[-c(1:2)] <- x_data_names


### 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(plyr)
step5<- ddply(step2output,c("subject","activity"),numcolwise(mean))            #180 obs. of  68 variables


## this save the output in txt file name tidydata
write.table(step5,"tidydata.txt",row.names = F)
