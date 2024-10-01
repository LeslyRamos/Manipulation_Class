# Iris data
# if questions ?iris

#load data set
library(datasets)

#Get Iris data
data(iris)

#To see the first 6 rows of the table
head(iris)

#To see the summary of the iris data
summary(iris)

#To find out what kind of data is the iris data
class(iris)

#To see the structure of iris data (observations, variables)
str(iris)

#If we want to fix something on the table right away
fix(iris)

#STUDENTS DATA
## To get (import) the data available online use the following:
students<-read.table('https://www.dipintothereef.com/uploads/3/7/3/5/37359245/students.txt',header=T, sep="\t", dec='.')

#Summary of the data 
summary(students)

#head of the data (first 6 rows)
head(students)

#If we want to choose a column from the data student, we can connect "student" to the column name through "$" symbol
students$height
students$shoesize

#Another way to select which row or column we want from the data is by using the following: object[row,column]
students[,1]
students[1,1]
students[,2]

#Add a condition and check whether the observation (row) applies to female students or not:
students$gender=='female'

#Apply this filter f using subscript. We only want to extract/select the rows that contain data for female students
f<-students$gender=="female"
f

#The resulting data set will be inserted into a new object called females:
females<-students[f,]
females

#The original data set students had ten observations, and I can check this change by calling the dimensions of the new object females:dimension (females). The new data set is a data.frame with 5 observations and 4 columns.
dim(females)

#The column names remained unchanged
colnames(females)

#but I now only have 5 names for the rows
rownames(females)

#The rows can be renamed by combining c the names of the females into a vector.
rownames(females)<-c('Vanessa', 'Vicky', 'Michelle', 'Joyce', 'Victoria')

#Write females, to see the new table
females









