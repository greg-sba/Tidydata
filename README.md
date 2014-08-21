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








During the course of the project:

-the test set and training set of data were merged into a single dataset.

-the features.txt file which included variables names was loaded as a header to the final dataset.

-the activity_labels.txt file   
