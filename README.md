Introduction
=====================================================================================================================
The purpose of the Tidydata Project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

Data Background
=====================================================================================================================
The data which will be used for the project were obtained from the following study:

Human Activity Recognition Using Smartphones Dataset
Version 1.0
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

In the study, experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The original files obtained from the study include:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

Project Requirements
================================================================================================================
Deliverables for the project include:
1) a tidy data set 
2) a link to a Github repository with a script for performing the analysis(noted below) 
3) a code book that describes the variables, the data, and any transformations or work that was performed to clean up the data 
4) a README.md in the repo with the scripts which explains how all of the scripts work and how they are connected.  

The R script, called run_analysis.R, must do the following. 
1) Merge the training and the test sets to create one data set.
2) Extract only the measurements on the mean and standard deviation for each measurement. 
3) Use descriptive activity names to name the activities in the data set
4) Appropriately label the data set with descriptive variable names. 
5) Create a second, independent tidy data set with the average of each variable for each activity and each subject. 

The R Script
===============================================================================================================
This script assumes that all necessary files are located in the working directory.

In the first stage of the script the variable names file (features.txt) is read into R. Next the test (x_test.txt) and training (x_test.txt) datasets are read and the variable names are added to each.  Finally the test and training sets are combined into a sinlge file using rbind().  The resulting file is named df.

*Note on variables:  The associated Codebook provides detailed explanation of the variables.  In creating the tidydata file I decided to leave the variable names as they are rather than clean them up as demonstrated in the video lecture.  My reason for this is that I feel any modifications such as using all lowercase and removing "_" and "-" would lead to variable names which are less readable and more confusing. The current variable names are already quite long and I did not want to make them longer.  Also changing them might lead to confusion when comparing to the original features.txt file.    

In stage 2 activity labels (y_test.txt and y_train.txt) are read into R and joined into a single labels file using rbind(). The labels column is added to df as a new variable named Activity and the resulting file is named combined_df. The activity labels are loaded as numbers indicating which activity the observation/measurement relates to.  The six activities are: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. Finally the number codes are updated to the descriptive names. 

In stage 3 subject codes are added to the data file.  The study used 30 volunteers and each was assigned a number 1-30. The initial files (subject_test.txt and subject_train.txt) are read into R and combined into a single file called sub. They are assigned the variable name "Subject" and added as a new variable to the combined_df file resulting in a new file called "data."







 
