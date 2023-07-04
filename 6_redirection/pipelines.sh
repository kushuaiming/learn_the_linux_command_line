# Using the pipe operator |, the standard output of one command can be piped
# into the standard input of another.
# comand1 | command2
ls -l /usr/bin | less

# It is possible to put several commands together into a pipeline.
# Frequetly, the commands used this way are referred to as filters.
ls /bin /usr/bin | sort | less

# Remove any duplicates from the list.
ls /bin /usr/bin | sort | uniq | less
# See the list of duplicated.
ls /bin /usr/bin | sort | uniq -d | less

# The wc (word count) command is used to display the number of lines,
# words, and bytes contained in files.
wc ls-output.txt
# If executed without command line arguments, wc accepts standard input.
# The -l option limits its output to report only lines.
ls /bin /usr/bin | sort | uniq | wc -l

# Print lines matching a pattern
# gerp patter filename
ls /bin /usr/bin | sort | uniq | grep zip

# head/tail: print first/last part of files
head -n 5 ls-output.txt
tail -n 5 ls-output.txt
ls /usr/bin | tail -n 5

# The tee program reads standard input and copies it to both standard output
# and to one or more files.
ls /usr/bin | tee ls.txt | grep zip

# Use pipeline to read function output.
function1() {
  echo "Hello, world.";
}
function2() {
  while read data; do
    echo $data;
  done;
}
function1 | function2