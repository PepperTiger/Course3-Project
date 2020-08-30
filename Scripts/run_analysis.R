## Author : Paul Beuran (Github:PepperTiger)
## Date : 08-30-2020

## Extracting numeric values, column separated by " " and row-separated by "\t"
## from a .txt file and tidying them
read.num.txt <- function(...) {
  x = read.delim(...)
  x = as.character(x[,1])
  x = strsplit(x," ")
  for(i in 1:length(x)) 
    x[[i]] = as.numeric(x[[i]][x[[i]] != ""])
  x = data.frame(matrix(unlist(x), nrow=length(x), byrow=T), stringsAsFactors = F)
  x
}

## Get the raw data from "data" folder and return their tidied version,
## containing the variables indicating the "mean" or "std" in their names
get.tidy.data <- function() {
  message("Get tidy data - Start")
  message("- Get test data...")
  subject_test = read.delim("data\\test\\subject_test.txt", header=FALSE)
  x_test = read.num.txt("data\\test\\x_test.txt", header=FALSE)
  y_test = read.delim("data\\test\\y_test.txt", header=FALSE)
  test = cbind(cbind(subject_test, y_test), x_test)
  
  message("- Get train data...")
  subject_train = read.delim("data\\train\\subject_train.txt", header=FALSE)
  x_train = read.num.txt("data\\train\\x_train.txt", header=FALSE)
  y_train = read.delim("data\\train\\y_train.txt", header=FALSE)
  train = cbind(cbind(subject_train, y_train), x_train)
  
  message("- Merge data...")
  total = rbind(test,train)
  
  message("- Change column names...")
  features = read.delim("data\\features.txt", header=FALSE)
  features = gsub(x=features[,1], pattern="[0-9]{1,} ", replacement="")
  features = c("id", "activity", features)
  colnames(total) <- features
  total = total[,grep("^id|^activity|mean|std", features)]
  
  message("- Order data by $id and $activity...")
  total = total[order(total$id, total$activity),]
  rownames(total) = NULL
  
  message("- Change $activity from integer to factor...")
  activity_labels = read.delim("data\\activity_labels.txt", header=FALSE)
  activity_labels = gsub(x=activity_labels[,1], pattern="[0-9]{1,} ", replacement="")
  total$activity = factor(as.factor(total$activity), labels = activity_labels)
  
  message("Get tidy data - Done !")
  total
}

## Get the 'total' tidied data and return a version containing
## the average of each numeric variables by $id and $activity
get.mean.data <- function(total) {
  message("Get mean data - Start")
  message("- Creating data.frame containing means...")
  total_mean = data.frame(matrix(ncol=ncol(total),nrow=0))
  colnames(total_mean) = colnames(total)
  
  message("- Getting variables' means by $id and $activity...")
  for(i in unique(total$id)) {
    for(j in levels(total$activity)) {
      row = c(i,j)
      for(k in 3:ncol(total)) {
        mval = mean(total[total$id == i & total$activity == j,][,k])
        row = c(row,mval)
      }
      total_mean[nrow(total_mean) + 1,] = row
    }
  }
  
  message("- Changing columns types...")
  total_mean[,1] = sapply(total_mean[,1], as.integer)
  total_mean[,2] = sapply(total_mean[,2], as.factor)
  total_mean[,3:ncol(total_mean)] = sapply(total_mean[,3:ncol(total_mean)], as.numeric)
  
  message("Get mean data - Done !")
  total_mean
}

## Process execution
total = get.tidy.data()
total_mean = get.mean.data(total)

