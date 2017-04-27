dataset_url <- "http://s3.amazonaws.com/practice_assignment/diet_data.zip"
download.file(dataset_url, "diet_data.zip")
unzip("diet_data.zip", exdir = "diet_data")




weightmedian <- function (directory, day){
all_files <- list.files(directory, full.names =TRUE)
df <- data.frame()
for (i in 1:5){
df <- rbind (df, read.csv(all_files [i]))
}
subset <- df[which (df$Day == day), ]
median (subset [ ,"Weight"], na.rm = TRUE)
}



weightmean <- function (directory, day){
all_files <- list.files(directory, full.names = TRUE)
D_F <- data.frame()
for (i in 1:5){
D_F <-rbind (D_F, read.csv(all_files [i]))
}
data_subset <- D_F[which(D_F$Day == day), ]
mean (data_subset [ ,"Weight"], na.rm = TRUE)
}