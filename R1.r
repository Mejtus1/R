# R is programming language used for statistical analysis, situalization and other datat analysis
# Based on previous language "S" 
# - R is all about data, designed to make data analysis easier]
# - open source, easy to reporoduce our analysis, works with lots of data
# - used for creating data visulaizations 

# this is only for our exercise
# install R extension for VSC or use RStudio Cloud interface
install.packages("tidyverse") # install tidyverse on our machine 
library(tidyverse) # download tiddyverse library 
library(ggplot2)

isntall.packages("palmerpenguins")
library("palmerpenguins")
summray(penguins)
'''
 species          island    bill_length_mm  bill_depth_mm   flipper_length_mm  body_mass_g  
 Adelie   :152   Biscoe   :168   Min.   :32.10   Min.   :13.10   Min.   :172.0     Min.   :2700  
 Chinstrap: 68   Dream    :124   1st Qu.:39.23   1st Qu.:15.60   1st Qu.:190.0     1st Qu.:3550  
 Gentoo   :124   Torgersen: 52   Median :44.45   Median :17.30   Median :197.0     Median :4050  
                                 Mean   :43.92   Mean   :17.15   Mean   :200.9     Mean   :4202  
                                 3rd Qu.:48.50   3rd Qu.:18.70   3rd Qu.:213.0     3rd Qu.:4750  
                                 Max.   :59.60   Max.   :21.50   Max.   :231.0     Max.   :6300  
                                 NA's   :2       NA's   :2       NA's   :2         NA's   :2     
     sex           year     
 female:165   Min.   :2007  
 male  :168   1st Qu.:2007  
 NAs  : 11   Median :2008  
              Mean   :2008  
              3rd Qu.:2009  
              Max.   :2009
'''

# we can write code in Rstudio (using console or source editor)
# - scripts written in console will be lost when current session is closed
# - R is case sensitive

# 1. Editor - used for writing scripts which can be saved and re-used
#
# 2. Console 
#
# 3. Environment, History, Connections, Tutorial
# - upper right corner
# Evnironment - we can select all the data we have currently loaded, objects
# History - history of commands, previous command, most recent at bottom 
#
# 4. Files, Plots, Packages, Help, Viewer
# - Bottom right corner
# Files - contents in current working folder
# Plots - graphs 
# Packages - Rstudio gives access to packages library, we can update, install and manage library in package manager
# Help - helpful resources for R and Rstudio

# Creating plots 
ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g))+ geom_point(aes(color = species))
# - utilizing ggplot package in R, specifically to create scatter plot using penguins dataset
# ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)): 
# - initializes plot using penguins dataset and defines aesthetics 
# - (aes) mapping for x-axis as flipper_length_mm 
# - y-axis as body_mass_g
# + geom_point(aes(color = species)): 
# - adds layer to plot using geom_point, which represents data as points
# - color aesthetic is mapped to species column, meaning each point on plot will be colored 
# according to different species in dataset

# ------------------------------------------------------------------------------------------------
# Functions 
# - body of reusable code used to perform specific tasks in R 
# Argument (R)
# - information that function in R needs in order to run 
# Variable (R)
# - representation of value in R that can be stored for later use during programming 
# - we can save time by using variables to represent values, this lets us call value anytime with just a variable
# - example: you want to filter a dataset, just assign a variable to function we used to filter a data
first_variable <- "This is my variable" 
second_variable <- 12.5
# Vector (R)
# - group of data elements of same type sorted in sequence in R 
vec_1 <- c(13, 48.5, 71, 101.5, 2.0)
vec_1
# [1] 13, 48.5, 71, 101.5, 2.0
# - vector variable can be used anywhere in analysis with only variable name 
# - values in vector will be automatically applied to our analysis 
# Pipe (R)
# - tool in R for expressing sequence of multiple operators, represented with %>%
# - used to apply output of one function, into another function 

# ------------------------------------------------------------------------------------------------
# Dates and times in R
# - how to work with dates and times using tidyverse and lubricate package
# - convert different types of data in R into date and date-time formats
# install tidyverse package 
install.packages("tidyverse") 
# - load tidyverse and lubridate packages using library() function
# - load core tidyverse to make it available in your current R session: 
library(tidyverse)
# - load lubridate package: 
library(lubridate)

# Working with dates and times

# Types
# - in R are three types of data that refer to instant in time:
# 1. date ("2016-08-16")
# 2. time within a day (“20:11:59 UTC")
# 3. date-time. This is a date plus a time ("2018-03-31 18:15:48 UTC")

# - get current date
today()
# [1] "2024-01-26"

# - get current date-time
now()
# [1] "2024-01-26 14:28:45 UTC"

# when working with R, there are three ways you are likely to create date-time formats: 
# 1. From string
# 2. From individual date
# 3. From existing date/time object
# - R creates dates in the standard yyyy-mm-dd format by default 

# 1. Converting from strings 
# - Date/time data often comes as strings
# - you can convert strings into dates and date-times using tools provided by lubridate
# - these tools automatically work out date/time format 
# a) identify order in which year, month, and day appear in your dates
# b) arrange letters y, m, and d in same order, that gives you name of lubridate function that will parse your date
ymd("2021-01-20")
# [1] "2021-01-20"
mdy("January 20th, 2021")
# [1] "2021-01-20"
dmy("20-Jan-2021")
# [1] "2021-01-20"
ymd(20210120)
# [1] "2021-01-20"

# 2. Creating date-time components
# - ymd() function and its variations create dates
# - to create date-time from date, add underscore and one or more of letters h, m, and s (hours, minutes, seconds) to name of function:
ymd_hms("2021-01-20 20:11:59")
# [1] "2021-01-20 20:11:59 UTC"
mdy_hm("01/20/2021 08:01")
# [1] "2021-01-20 08:01:00 UTC"

# 3. Switching between existing date-time objects 
# - finally, you might want to switch between date-time and date
# - use function as_date() to convert date-time to date
as_date(now())
# [1] "2021-01-20"

# ------------------------------------------------------------------------------------------------ 
# Other common data structures
# Data frames are most common way of storing and analyzing data in R, so it’s important to understand what they are and how to create them
# - data frame is collection of columns–similar to spreadsheet or SQL table
# - each column has name at top that represents variable, and includes one observation per row 
# - data frames help summarize data and organize it into format that is easy to read and use

# Key things to keep in mind when working with data frames: 
# 1. columns should be named
# 2. data frames can include many different types of data, like numeric, logical, or character
# 3. elements in same column should be of same type

# - if there is a need to manually create data frame in R, data.frame() can be used 
# - data.frame() function takes vectors as input
# - In parentheses, enter name of column, followed by equals sign, and then vector you want to input for that column 
data.frame(x = c(1, 2, 3) , y = c(1.5, 5.5, 7.5))
# - x column is vector with elements 1, 2, 3, and the y column is vector with elements 1.5, 5.5, 7.5
#    x y
# 1  1 1.5
# 2  2 5.5
# 3  3 7.5

# - in most cases there wont be a need to manually create data frames ourselves
# - data will be typically imported from another source (database, files, program)

# --------
# Matrices
# - is two-dimensional collection of data elements 
# - matrices can only contain single data type you can’t have both logicals and numerics 
# - to create matrix in R, use matrix() function 
# - function has two main arguments that you enter in parentheses

# - create 2x3 (two rows by three columns) matrix containing values 3-8
# - enter vector containing series of numbers: c(3:8), comma, Finally, enter nrow = 2 to specify number of rows
matrix(c(3:8), nrow = 2)
# - R places first value (3) of vector in uppermost row, and leftmost column of matrix, and continues sequence from left to right

      [,1] [,2] [,3]
[1,]    3    5    7
[2,]    4    6    8
# - R displays matrix with three columns and two rows 

# - number of culumns can be also specified: (ncol = ) instead of number of rows (nrow = ) 
matrix(c(3:8), ncol = 2)
# - R infers number of rows automatically

      [,1] [,2] 
[1,]    3    6    
[2,]    4    7    
[3,]    5    8   


# -----
# Files
# - dir.create function to create directories
dir.create ("destination_folder")
# - file.create() function to create blank file. 
# - place name and type of file in parentheses of function
# - file types: .txt, .docx, or .csv 
file.create (“new_text_file.txt”) 
file.create (“new_word_file.docx”) 
file.create (“new_csv_file.csv”) 
# - if file is successfully created when you run function, R will return value of TRUE (if not, R will return FALSE)
file.create (“new_csv_file.csv”)
# [1] TRUE 
# - copying file can be done using file.copy() function
# - add name of file to be copied in parenthesis, comma, destination folder to copy file into  
file.copy (“new_text_file.txt” , “destination_folder”)
# - files can be checked in RStudio, copy of the file appears in relevant folder:
# - files in R studio can be deleted with unlink() function and entering files name inside parenthesis 
unlink (“some_.file.csv”)

