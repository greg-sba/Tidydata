#Merge the training and test sets to create one data set

#Read test and training datasets and load features as variable #names.  Combine test and training data sets into a single data #file.
var <- read.table("features.txt", sep = "", header = FALSE, quote = "")
testdat <- read.table("x_test.txt", sep ="", header=FALSE, col.names=var[,2], check.names=FALSE)
traindat <- read.table("x_train.txt", sep ="", header=FALSE, col.names=var[,2], check.names=FALSE)
df <- rbind(testdat, traindat)

#Add activity labels to the data file.
labels_test <- read.table("y_test.txt")
labels_train <- read.table("y_train.txt")
labels <- rbind(labels_test, labels_train)
combined_df <- cbind(labels, df)
colnames(combined_df)[1] <- "Activity"

#Update activity codes to descriptive names.
combined_df$Activity[combined_df$Activity == 1]<- "Walking"
combined_df$Activity[combined_df$Activity == 2]<- "Walking_Upstairs"
combined_df$Activity[combined_df$Activity == 3]<- "Walking_Downstairs"
combined_df$Activity[combined_df$Activity == 4]<- "Sitting"
combined_df$Activity[combined_df$Activity == 5]<- "Standing"
combined_df$Activity[combined_df$Activity == 6]<- "Laying"

#Add subject codes to the data file. Add column name to subject #data.  
sub_test <- read.table("subject_test.txt", sep = "", header = FALSE, quote = "")
sub_train <- read.table("subject_train.txt", sep = "", header = FALSE, quote = "")
sub <- rbind(sub_test, sub_train)
colnames(sub) <- "Subject"
data <- cbind(sub, combined_df)

#Extract measurements on the mean and standard deviation for each measurement
tidydata1 <- data[ , grep("Subject|Activity|mean|std", names(data))]

#Save tidydata1 as a text file.
write.table(tidydata1, file="tidydata1.txt", row.names=FALSE)

#Create a second, independent tidy data set with the average of each variable for each activity and each subject.  Install reshape2 package. Save tidydata2 #as a text file.
install.packages("reshape2")
library(reshape2)

melted <- melt(tidydata1, id.vars=c("Subject", "Activity"))
tidydata2 <- dcast(melted, Subject + Activity ~ variable, mean)

write.table(tidydata2, file="tidydata2.txt", row.names=FALSE)
