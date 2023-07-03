# A program can produce output on any of several numbered file streams.
# The shell references standard input, output, and error as file descriptors 0, 1, and 2, respectively.
ls -l /bin/usr 2> ls-error.txt

# Redirecting standard output and standard error to one file.
ls -l /bin/usr > ls-output.txt 2>&1
ls -l /bin/usr &> ls-output.txt
# Append the standard output and standard error streams to a single file.
ls -l /bin/usr &>> ls-output.txt

# Suppress error messages from a command.
ls -l /bin/usr 2> /dev/null