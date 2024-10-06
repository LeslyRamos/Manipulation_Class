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

##Using the iris data set, create three smaller data sets corresponding to the three species designated in the column Species
iris$Species=='setosa'
f<-iris$Species=='setosa'
f
setosaf<-iris[f,]
setosaf

versf<-iris$Species=='versicolor'
versicolor<-iris[versf,]
versicolor

virgf<-iris$Species=='virginica'
virginica<-iris[virgf,]
virginica

#SAMPLE

# create a vector from 1 to the number of row in 'females'
1:nrow(females)

# filter with two randomly selected female students
sf<-sample(1:nrow(females), 2)
sf

# apply the filter on our original data set
females[sf,]

#SORTING

##Homework
iris$colors<-ifelse(iris$Species=='setosa', 'purple', ifelse(iris$Species=='versicolor', 'blue','pink'))

iris$colors

iris

iris[order(-iris$Sepal.Width),]

iris$colors<-NULL

iris





##CLASS OCTUBER 1st

#summarize: is used to gain insights (mean, median, mode, etc.). It reduces several values to a single value.
summarised <- summarise(iris, Mean.Width = mean(Sepal.Width))
head(summarised)

#The select function is used to select data based on the name of a column.
# by column names
selection1 <- dplyr::select(iris, Sepal.Length, Sepal.Width, Petal.Length)
head(selection1) 
# by column range
selection2 <- dplyr::select(iris, Sepal.Length:Petal.Length)


## this anotation "::" is when I want to specify which package I wan to use. If I use this, I do not need to load the package.


#2:7 means take everything from 2 to 7 (range)

#"c" means combine
# by column range number
selection3 <- dplyr::select(iris,c(2:5))
head(selection3)
#to remove some columns, or to hide a column
selection4 <- dplyr::select(iris, -Sepal.Length, -Sepal.Width)


#The filter function is used to filter rows with matching criteria. It works in the same way as the select function (i.e. we pass a data frame together with a comma-separated condition).
# Select setosa species
filtered1 <- filter(iris, Species == "setosa" )
head(filtered1,3)
# Select versicolor species with Sepal width more than 3
filtered2 <- filter(iris, Species == "versicolor", Sepal.Width > 3)
tail(filtered2)


#The function mutate is to create new columns (variables) while preserving existing columns in a data set.
#To create a column “Greater.Half” which stores a logical vector (T/F)
mutated1 <- mutate(iris, Greater.Half = Sepal.Width > 0.5 * Sepal.Length)
#To check how many flowers fall in this condition
table(mutated1$Greater.Half)


#he arrange function is used to sort rows by variables in ascending (default) or descending order.
arranged1 <- arrange(iris, Sepal.Width)
# Sepal Width by descending order
arranged2 <- arrange(iris, desc(Sepal.Width))


#The group_by function groups observations within a data set according to one or more variables. Data operations are often performed on groups defined by variables. ungroup removes grouping.
# Mean sepal width by Species
gp <- group_by(iris, Species)
gp.mean <- summarise(gp,Mean.Sepal = mean(Sepal.Width))
gp.mean

#tibble is kind of a data frame, kind of like a super data frame. There is a higher inspection of the data set. 
?tibble::tibble


#Pipe operator: is "%>%"
## Is going to let you connect operations together. Such as filter, select, arrange, summarise, group_by, etc. 
#To select the rows with conditions
iris %>% filter(Species == "setosa",Sepal.Width > 3.8)
#dplyr package makes things easier (consider using it in the homeworks)


#tidyr

TW_corals<-read.table('tw_corals.txt', header=T, sep='\t', dec='.') 

TW_corals_long <- TW_corals %>%
  +     pivot_longer(Southern_TW:Northern_Is, names_to = "Region", values_to = "Richness")

TW_corals_long

income<-read.table('metoo.txt',header=T, sep="\t", dec=".", na.strings = "n/a")
income


###HOMEWORK
#
























