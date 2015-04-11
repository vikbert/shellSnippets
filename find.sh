#!/usr/bash
#
# find something on file system
# 


# find empty files
find . -empty -type f 

# find NON-empty file
find . -type f -size +1c

# find all empty files and do something on each
find . -empty -type f -execdir echo {} +

# empty log files which larger thant 5000k
for file in `find /var/log/ -type f -size +5000k`; do  > $file; done

# find the all empty css or css file with ONLY comments or blank lines
# 01: delete all comments from *.css
# use sublime 2 replace with regular expression "\/\*[\s\S]+?\*\/"

# 02: delete all blank lines from *.css

# test the files
for file in `find . -type f -name "*.css" -size -8k`; do grep -v '^$' $file; done 

# delete blank lines from files
for file in `find . -type f -name "*.css" -size -8k`; do grep -v '^$' $file > $file.out; mv $file.out $file; done 

# 03: find all empty css files
for file in `find . -empty -type f -name "*.css"`; do readlink -f $file >> results.txt; done