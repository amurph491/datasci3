
features<-read.table("./UCI HAR Dataset/features.txt", sep="", header = FALSE)[2]  # only take the value column for features
activities<-read.table("./UCI HAR Dataset/activity_labels.txt", sep="", header = FALSE,col.names=c("act_id","activity"))

x_test<-read.table("./UCI HAR Dataset/test/X_test.txt", sep="", header = FALSE, col.names = features$V2)
y_test<-read.table("./UCI HAR Dataset/test/y_test.txt", sep="", header = FALSE, col.names = c("act_id"))
subj_test<-read.table("./UCI HAR Dataset/test/subject_test.txt", sep="", header = FALSE, col.names = c("SubjectNumber"))

x_train<-read.table("./UCI HAR Dataset/train/X_train.txt", sep="", header = FALSE, col.names = features$V2)
y_train<-read.table("./UCI HAR Dataset/train/y_train.txt", sep="", header = FALSE, col.names = c("act_id"))
subj_train<-read.table("./UCI HAR Dataset/train/subject_train.txt", sep="", header = FALSE, col.names = c("SubjectNumber"))

test <- cbind(subj_test, y_test, x_test)
train <- cbind(subj_train, y_train, x_train)

data <- rbind(test,train)

cols <- grep("mean\\(|std\\(",features$V2,value=FALSE) + 2 # Need to adjust by two to account for first two columns in "data"

cols <- c(1,2,cols)

dataMS <- data[,cols]

d <- merge(dataMS,activities,sort=FALSE)

tidy <- d[order(d$SubjectNumber),]
ncols <-dim(tidy)[2]
tidy <- tidy[,c(1,ncols,2:(ncols-1))] 			#move activity column to the second column next to the activity id
names(tidy) <- gsub("\\.|\\.\\.\\."," ",names(tidy)) 	# Replace periods with spaces

write.table(tidy, file = "./tidy_output.txt",sep=",", row.names = FALSE) #output to text file with comma delimiters