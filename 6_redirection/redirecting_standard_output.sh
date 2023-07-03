# Redirects standard output to another file instead of the screen.
ls -l /usr/bin > ls-output.txt
# The error message will be displayed on the screen.
ls -l /bin/usr > ls-output.txt
# Creates a new, empty file.
> ls-output.txt
# Appends redirected output to a file.
ls -l /usr/bin >> ls-output.txt