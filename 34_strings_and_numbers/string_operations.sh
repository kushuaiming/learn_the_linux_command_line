#!/bin/bash

# string-operations: a set of expansions that can be used to operate on strings.

# ${#parameter}
foo="This string is long."
echo "'$foo' is ${#foo} characters long."

# ${parameter:offset}
# ${parameter:offset:length}
echo ${foo:5}
echo ${foo:5:6}
echo ${foo: -5}
echo ${foo: -5:2}

# ${parameter#pattern}
# ${parameter##pattern}
foo=file.txt.zip
echo ${foo#*.}
echo ${foo##*.}

# ${parameter%pattern}
# ${parameter%%pattern}
echo ${foo%.*}
echo ${foo%%.*}

# ${parameter/pattern/string}
# ${parameter//pattern/string}
# ${parameter/#pattern/string}
# ${parameter/%pattern/string}
foo=JPG.JPG
echo ${foo/JPG/jpg}
echo ${foo//JPG/jpg}
echo ${foo/#JPG/jpg}
echo ${foo/%JPG/jpg}