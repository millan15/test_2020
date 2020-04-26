// Command to find a Specfic file or a directory and delete irt
find / -name Ram | xargs rm -rf {} 

// Command to find list of files with a string in current directory
find . -type f | xargs grep -l "Ram"

// Command to check list of ip's whether they are pingable or not
for i in $(cat ip);do ping -c1 $i && echo $i >> ip_working1;done

//Going through apache logs and find out the number of 5XX errors
cat test.log | awk '{print $9}' | sort -nr | uniq -c

//Check files older tham 60 days and size greater than 500M
find / +mtime 60 +size 500M

