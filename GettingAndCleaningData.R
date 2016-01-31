GettingAndCleaning <- function()
{
  
  #load libraries
  library(plyr) 
  library(data.table)
  library(dplyr) 
  
  ## load initial information
  
  ## y holds the subjects activity - X holds the features
  
  activityLabels <- getActityLabels()
  features <- getFeatures()
  
  featuresToSelect <- grep("-mean\\(\\)|-std\\(\\)", features$Feature)
 
  subjectData <- getSubjectData()
  
  featureData <- getFeatureData()
  
  activityData <- getActivityData()
  
  colnames(activityData) = "ActivityId"
  activities <- merge(activityData, activityLabels, by="ActivityId")$Activity
  
  featureData <- featureData[,featuresToSelect]
  mergedData <- cbind(subjectData,featureData,activities)
  
  require(data.table)
  statistics <- data.table(mergedData)
  statistics <- aggregate.data.frame(statistics,list(statistics$SubjectId), function(x) c(mean=mean(x), sd=sd(x) ))
  statistics
  write.table(statistics,"statisticalInformation.txt")
}

getSubjectData <- function ()
{
  subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt")
  ## add a subject description
  colnames(subjectTest) = c("SubjectId")
  subjectTest$Description <- paste("subject #", subjectTest$SubjectId)
  ## add a subject description
  colnames(subjectTest) = c("SubjectId","Description")
  
  subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
  ## add a subject description
  colnames(subjectTrain) = c("SubjectId")
  subjectTrain$Description <- paste("subject #", subjectTrain$SubjectId)
  ## add a subject description
  colnames(subjectTrain) = c("SubjectId","Description")
 
   subjectData <- rbind( subjectTest, subjectTrain)
   subjectData
  
}

getFeatureData <- function ()
{
  ##  X holds the features
  featuresTest <- read.table("UCI HAR Dataset/test/X_test.txt")
  featuresTrain <- read.table("UCI HAR Dataset/train/X_train.txt")
  featureData <- rbind( featuresTest, featuresTrain)
  features <- getFeatures()
  colnames(featureData) = features$Feature
  featureData
}

getActivityData <- function ()
{
  
  ## y holds the subjects activity 
  activityTest  <- read.table("UCI HAR Dataset/test/y_test.txt")
  activityTrain  <- read.table("UCI HAR Dataset/train/y_train.txt")
  activityData <- rbind( activityTest, activityTrain)
  colnames(activityData) <- c("ActivityId")
  activityData 
}

getFeatures <- function ()
{
  ##add descriptive names
  features <- read.table("UCI HAR Dataset/features.txt")
  ##add descriptive names
  colnames(features) <- c("FeatureId","Feature")
  features
}

getActityLabels <- function() 
{
  ## load initial information
  activityLabels <- read.table("UCI HAR Dataset/activity_Labels.txt")
  ##add descriptive names
  colnames(activityLabels) <- c("ActivityId", "Activity")
  activityLabels
}