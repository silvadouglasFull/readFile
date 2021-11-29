#!/usr/bin/env bash
# mycat.sh
#count line I want to ignore in file
#changes the echo line "vmware start $line" to the command you want
#$line is the line of the file currently being read

count=0
cat arquivo.txt | while read line
do
if [ $count -eq 0 ];then
((count+=1))
continue
fi
echo "vmware start $line"
done


#improved summer
#run the vmrun command and create a txt file with the command result
vmrun list > list.txt
#create a variable to say which line to ignore.
count=0
cat list.txt | while read line
do
if [ $count -eq 0 ];then
((count+=1))
continue
fi
#changes the echo line "vmware start $line" to the command you want
#$line is the line of the file currently being read
#for exemple: vmware start $line
echo "vmware start $line"
done

#how i haven't the "vw" installed in my machine i can't to test this script good look