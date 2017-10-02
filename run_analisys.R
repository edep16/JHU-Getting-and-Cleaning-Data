library(plyr)
#Obtain the names of the variables of the data 
variable_names <- readLines("UCI HAR Dataset/features.txt")
variable_names <- gsub("[0-9]([0-9][0-9])? ", "", variable_names)
variable_names <- gsub("^[0-9]", "", variable_names)
variable_names <- gsub("-", ".", variable_names)
variable_names <- gsub("()", "", variable_names, fixed = TRUE)
#variable_names <- tolower(variable_names)
#variable_names <- gsub(".", "", variable_names)

#read the training information 
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

y_train <- as.factor(y_train$V1)
y_train <- revalue(y_train, c("1" = "walking", "2" = "walking upstairs", "3" = "walking downstairs", 
                              "4" = "sitting", "5" = "standin", "6" = "laying"))
subject_train <- as.factor(subject_train$V1)

#Join the training data into one data frame
names(x_train) <- make.names(variable_names)
x_train$activity <- y_train
x_train$subject <- subject_train

#Read the testing data
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

y_test <- as.factor(y_test$V1)
y_test <- revalue(y_test, c("1" = "walking", "2" = "walking upstairs", "3" = "walking downstairs", 
                              "4" = "sitting", "5" = "standin", "6" = "laying"))
subject_test <- as.factor(subject_test$V1)

#Join the testing data inot one data frame
names(x_test) <- make.names(variable_names)
x_test$activity <- y_test
x_test$subject <- subject_test

#join the training and testing data into one data frame
full_data <- rbind(x_test, x_train)

#filter the data: create a new data frame just containing the mean() and std() variables
mean_std_variables <- grep("mean$|mean[.]|std", names(full_data))
mean_std_data <- full_data[ , c(mean_std_variables, 562, 563)]


#obtain the final data set by obtaining the means of each variable by the subject and activity
#also make the names more suitable for the final presentation of the data 
final_data_set <-  aggregate(mean_std_data[, -c(67, 68)], 
                             by = list(mean_std_data$activity, mean_std_data$subject), mean)
names(final_data_set)[c(1,2)] <- make.names(c("activiy", "subject"))

variable_names <- names(final_data_set)

variable_names <- tolower(variable_names)
variable_names <- gsub("[.]", "", variable_names)

names(final_data_set) <- make.names(variable_names)

write.table(final_data_set, "tidy.txt")





