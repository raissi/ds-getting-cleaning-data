library(dplyr);
#This is the entry function that will call other functions
#1st it calls mergeData to merge the two data sets
run_analysis <- function(dataDirectory){
  trainDir <- paste0(dataDirectory,"/train"); 
  testDir <- paste0(dataDirectory,"/test");
  #Step 1. Merges the training and the test sets to create one data set
  data <- mergeData(trainDir, testDir);
  
  #Step2. Extracts only the measurements on the mean and standard deviation for each measurement
  features <- getMeansAndStdsIndices(dataDirectory);  
  
  #Now we have the features to extract (their indices are in column 1 of features)
  #let's extract them from dataSet
  data <- extractMeanAndStd(features$V1, data);
  
  #Step 3
  activities <- labelActivities(dataDirectory);
  data <- cbind(activities, data);
  
  #Step 4, appropriate col names
  data <-addColumnLabels(data);
  #Step 5
  subjects <- mergeSubjects(trainDir, testDir);
  tidy <- cbind(subjects, data);
  colnames(tidy)[1] <- "Subjects"
  #Use dplyr package group_by to group by activities and subjects
  y <- group_by(tidy, Activities, Subjects);
  #Use dplyr package summarise_each to get the mean of each column
  tidy <- summarise_each(y, funs(mean));
}

#This functions reads the two data sets
#and merges them by rows
mergeData <- function(trainDir, testDir){
  trainDataFile <- paste0(trainDir,"/X_train.txt");
  testDataFile <- paste0(testDir,"/X_test.txt");
  
  trainData <- read.table(trainDataFile);
  testData <- read.table(testDataFile);
  
  rbind(trainData, testData);
}

#This function extracts a data frame of mean&std features names and indices
#It takes as arg the directory where the features.txt
getMeansAndStdsIndices <- function(directory){
  featuresFile <- paste0(directory,"/features.txt");
  features <- read.table(featuresFile);  
  
  #Regular expression: get only the features 
  #(column 2 in file) which values contain "mean()" or "std()"
  features <- features[grepl("mean\\(\\)|std\\(\\)", features$V2),];
}


#This function extracts the mean & std of each feature from the original dataset
#it takes as args a vector of the indices of features to extract
# and the data set to extract from
extractMeanAndStd  <- function(indices, dataSet){    
  dataSet <- dataSet[,indices];
}

labelActivities <- function(dataDirectory){
  trainDir <- paste0(dataDirectory,"/train");
  testDir <- paste0(dataDirectory,"/test");
  
  labelsFile <- paste0(dataDirectory,"/activity_labels.txt");
  actCodes <- read.table(labelsFile);
  #Map activity code to labels:
  labels <- data.frame(
    V2 = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"),
    label = c("Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying")
  );
  
  actLabels <- merge(actCodes, labels, by.actCodes = "V2", by.labels = "V2");
  
  acts <- mergeActivites(trainDir, testDir);
  
  mapActivitiesToLabels(acts, actLabels);
}

#This functions reads the two activities files
#and merges them by rows
mergeActivites <- function(trainDir, testDir){
  trainActFile <- paste0(trainDir,"/y_train.txt");
  testActFile <- paste0(testDir,"/y_test.txt");
  
  trainAct <- read.table(trainActFile);
  testAct <- read.table(testActFile);
  
  rbind(trainAct, testAct);
}

#Maps the raw activities values with their labels
#
mapActivitiesToLabels <- function(rawActivities, actLabels){
  
  
  #Since the merge does not preserve the order. We keep the order in new column temp  
  rawActivities[,"temp"] <- 1:nrow(rawActivities);
  
  #rawActivities[,temp := 1:nrow(rawActivities)];
  merged <- merge(actLabels, rawActivities, by.actLabels = "V1", by.rawActivities = "V1");
  #Get original order
  merged <- merged[order(merged$temp), ];
  c <- 1:nrow(merged);
  merged <- merged[c, "label"];
}

addColumnLabels <- function(data){
  labels <- read.table("labels.txt");
  colnames(data) <- labels$V1;
  data;
}

#This functions reads the two subjects files
#and merges them by rows
mergeSubjects <- function(trainDir, testDir){
  trainSubFile <- paste0(trainDir,"/subject_train.txt");
  testSubFile <- paste0(testDir,"/subject_test.txt");
  
  trainSub <- read.table(trainSubFile);
  testSub <- read.table(testSubFile);
  
  rbind(trainSub, testSub);
}
