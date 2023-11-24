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
