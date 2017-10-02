# Getting and Cleaning Data: Course Final Project
## Introduction

This repository contains the files required for the final project of the Coursera course "Getting and Cleaning Data" which consist
of 3 files besides this README file: 
* run_analysis.R: which contains the transformations made to the original raw data 
* tidy.txt: the final output of the analysis
* CodeBook: which describes the variables contained in the tidy.txt file

## Raw data

The raw data for this project was obtained using the following link:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The following link contains more information related to the raw data: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## The run_analisys file
The run_analisys file is an R script which reads the pertinent files of the raw data as long as the original download file is 
unziped and the produced folders located in the current working directory

The run_analisys file performs the following actions: 
* Read the files of interest (test and training data as well as information on the subjects and variable names)
* Join the files together into a single data set 
* Filter the variables so that only those containing "mean" or "std" (standard deviation) are preserved 
* Generate a new data set containing only the means of each variable by subject and activity performed by the subject

## The tidy file

The tidy file contains the output of the run analisys file and, as mentioned above contains the output of the run_analisys file. 
This file contains 81 variables with 180 observations

## The CodeBook file

This file contains an explanation of the variables contained in the tidy.txt file



