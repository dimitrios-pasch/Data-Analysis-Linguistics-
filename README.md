# Data-Analysis-Linguistics-
Working with a data set from the English Lexicon Project (ELP), which contains thousands of English words and how fast people respond to them in experiments.

## Description
Firstly, the data set ELP is being loaded, and the number of rows are being counted (observation/participants/items). After this the structure of the dataset is being loaded as well as a preview of data in each variable. 
Secondly a table for length is created to check the shortest, longest and most frequent word length.

Later a Histogram is created on the Reaction Time, a break of 50 was chosen to make it look detailed. The bigger the break is the more detailed and smoothed out shape the graph will have.
Right after the histogram is created, the tendency and spread for RT is calculated, such as Mean, Median, Range, Standard deviation and standard error.

A box plot is also added to visualize RT distributions with median, quartiles and potential outliners.

Finally, a linear regression model is built to predict RT from Log10Freq, and a summary model at the end to show coefficients.

## Running the code
- Have the RStudio
- create a new script
  > file > New file > R Script
- Either copy paste the code OR save file and open in RStudio using open file.
- When running the code it will ask you to open a file you must pick ("ELP_full_length_frequency")
- Then continue running code to get the charts and results.

## What I have learnt
- how to load CSV data using the 'read.csv()'
- explore data sets using 'str()' to understand size and structure, 'table()' for variable summaries and others.
- calculate statistics 'Mean, Median, Range'

## Future improvements
Later on I will try to make projects more organized and cleaner, such as having a section for the data, a section for the scripts, then the outputs like plots and summary and at the end a README.







