# Getting-and-Cleaning-Data-Course-Project
Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.
The goal is to prepare tidy data that can be used for later analysis.

# Files
1. Tidy data set
    1. tidydata.csv
    2. tidydata.txt
 2.  run_analysis.R
 3.  codebook
 

 ## Description
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Dataset(from above link)
1. test 
2. train
3. activity_labels.txt
4. features.txt
5. features_info.txt
6. README.txt


#### Step during running script
1. change directory location using **setwd()**
2. **run_analysis.R** execute the code to get ouput as tidy data set
3. final output is generated using **write.table()** and **write.csv()**


##### Codebook
There are **3 ** file 

1. dataMaid_codebook.Rmd   (Download to view)
2. dataMaid_codebook.html  (Download to view)
3. codebook.md
    * summarize.txt

dataMaid_codebook.Rmd and dataMaid_codebook.html are output of makeDataReport(tidydata)

codebook.md (as requested in project) (contains variable,units,description,summarize) but summarize output was extensive so 
it is saved in summarize.txt
