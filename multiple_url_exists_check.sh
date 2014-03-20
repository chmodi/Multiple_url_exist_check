#!/bin/bash
split -l 1000 urllist.txt tmpurl       # split bigfile into 1000 line subfiles called tmpurl*
for p in tmpurl*                       # for all tmpurl* files
do
   # Start a process to check the URLs in that list
   echo start checking file $p in background &    
done
wait  
