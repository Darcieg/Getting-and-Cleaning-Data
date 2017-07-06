# Note: this script assumes that the working directory is GettingAndCleaningData/Week4/Project/Wearables
# Load magrittr package so we can use chaining
library(magrittr)

# Read features.txt into a dataframe, using the space as the separator
featureTable<-read.table("./UCI Har Dataset/features.txt", sep = " ")

activityLabelsTable<-read.table("./UCI Har Dataset/activity_labels.txt", sep = " ")

# Read the training and test files into tables
subjectTrainTable<-read.table("./UCI Har Dataset/train/subject_train.txt", sep = " ")
yTrainTable<-read.table("./UCI Har Dataset/train/y_train.txt", sep = " ")
subjectTestTable<-read.table("./UCI Har Dataset/test/subject_test.txt", sep = " ")
yTestTable<-read.table("./UCI Har Dataset/test/y_test.txt", sep = " ")

# xTrainTable is harder because X_train.txt has both single spaces and double spaces as separators, so we need to 
# read it into a temp variable first, replace the double spaces with single spaces, write the data into a temp output file,
# and then read the temp file into the data frame
temp<-readLines("./UCI Har Dataset/train/X_train.txt")
temp<-gsub("  ", " ", temp)
myFile<-tempfile()
writeLines(temp, con=myFile)
xTrainTable<-read.table(myFile, sep=" ")

temp<-readLines("./UCI Har Dataset/test/X_test.txt")
temp<-gsub("  ", " ", temp)
myFile<-tempfile()
writeLines(temp, con=myFile)
xTestTable<-read.table(myFile, sep=" ")

# Merge test and train tables
yTablesMerged<-rbind(yTrainTable, yTestTable)
subjectTablesMerged<-rbind(subjectTrainTable, subjectTestTable)
xTablesMerged<-rbind(xTrainTable, xTestTable)


# xTablesMerged's first column is all NA, so remove it
xTablesMerged$V1<-NULL

# Grab the names of all of the features we're measuring from featureTable and assign each one to a column in xTestTable
colHeaders<-featureTable$V2
colnames(xTablesMerged) <- colHeaders

# Change column header of subject and merged yTable to something meaningful
colnames(subjectTablesMerged)<-"subjectId"
colnames(yTablesMerged)<-"activityId"

# Add the columns for subjectTablesMerged and yTablesMerged (each is just one column) to xTableMerged and write to a new table.
completeObs<-subjectTablesMerged %>% cbind(yTablesMerged) %>% cbind(xTablesMerged)


# Get all of the activity numbers and replace them with the activity labels. 
completeObs$activityId <- replace(as.character(completeObs$activityId), completeObs$activityId == "1", "walking")
completeObs$activityId <- replace(as.character(completeObs$activityId), completeObs$activityId == "2", "walkingupstairs")
completeObs$activityId <- replace(as.character(completeObs$activityId), completeObs$activityId == "3", "walkingdownstairs")
completeObs$activityId <- replace(as.character(completeObs$activityId), completeObs$activityId == "4", "sitting")
completeObs$activityId <- replace(as.character(completeObs$activityId), completeObs$activityId == "5", "standing")
completeObs$activityId <- replace(as.character(completeObs$activityId), completeObs$activityId == "6", "lyingdown")


# Extract only the columns that contain mean or stdev information
# Some of the column names are presently invalid, causing "select" to report duplicate
# column names. 
# Make sure dplyr is loaded
library(dplyr)
valid_column_names<-make.names(names=names(completeObs), unique = TRUE, allow_ = TRUE)
names(completeObs)<-valid_column_names
selectedData<-select(completeObs, subjectId, activityId, contains("mean"), contains("std"))


# Apply the mean function to all numeric variables in each column, grouped by subjectId and activityId
summarizedData<-selectedData %>% group_by_("subjectId", "activityId") %>%
  summarise_if(.predicate = function(x) is.numeric(x),
               .funs = funs("mean"))

## Put descriptive variable names on the measurements

# Get rid of dots in column names
colnames(summarizedData)<-gsub("\\.", "", colnames(summarizedData))
# Expand t and f variables to Time and Freq
colnames(summarizedData)<-gsub("^t", "Time", colnames(summarizedData))
colnames(summarizedData)<-gsub("^f", "Freq", colnames(summarizedData))

# Capitalize other variables so we have proper camelCasing
colnames(summarizedData)<-gsub("mean", "Mean", colnames(summarizedData))
colnames(summarizedData)<-gsub("std", "Std", colnames(summarizedData))
colnames(summarizedData)<-gsub("gravity", "Gravity", colnames(summarizedData))
colnames(summarizedData)<-gsub("angle", "Angle", colnames(summarizedData))

# Change last instances of "t" to "Time")
colnames(summarizedData)<-gsub("AngletBody", "AngleTimeBody", colnames(summarizedData))
# Prepend "meanOf" to all column headers except subjectId and activityId
colnames(summarizedData)[3:88]<-paste0("meanOf", colnames(summarizedData)[3:88])

# Write the tidy data table to a text file
write.table(summarizedData, "tidydata.txt", row.names=FALSE)




