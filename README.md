## Repo Contents
1. Readme.md
2. run_analysis.R (script used to transform the data)
3. tidydata.txt (tidy data text file to be read into R)
4. Codebook.md

## Instructions for how to read the data file

The tidy data file is called "tidydata.txt" and is saved in space-delimited format. The data can be read into R with 
`read.table(<full path to tidydata.txt>, header=TRUE)` 
and viewed in R with 
`View(<table>)`, 
e.g.,
`tidyTable<-read.table("downloads\tidydata.txt", header=TRUE)`
`View(tidyTable)`

## Codebook Contents
The codebook contains:
1. An in-depth description of how the data was transformed
2. Descriptions of some of the terms used in the variable names, like "gravity," "acc," "gyro." 
3. All of the column names of the table and their descriptions.
4. The content of the original Readme.txt file provided in https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip (which contains all of the original data files used).
