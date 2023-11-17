# Programming with BASH

## Video 1: Learning Bash Scripting
* 2 ways to run a bash script
    * `bash myscript.sh`
    * use a `#!/bin/bash` to create an executable bash script 
        * can also do this using python, eg.
        ```python3
        #!/bin/python3

        if __name__ == __main__:
            print("hello world")
        ```
        * it is worth ussing the environment to tell you where BASH is located
            * use: `#!/usr/bin/env bash` instead, as not all systems have bash in the same place
* bash scripts run inside of a non-interactive shell
    * this means that many of the customizations the user sets for their environment will not be read when the script is run
    * this gives the script a clean environment in which to run
    * we can change options for the subshell using `set` or `shopt` in the script itself

## Vid2: choosing an editor.. moving on

## vid3: displaying text with echo
echo - prints text to the std output
* -n option turns off newline

# vid4: variables
* vash variable are a special case of parameter substitution
* variables are named with alphanumeric characters
* variable names are case-sensitive
* generally, lower-case variable names are used as a way to distinguish from environmental variables

## vid 5: working with numbers

## vid 5: testing values
* the shell returns a status code after a command completes [0, 1]
    * 0 = TRUE!!!!, 1 = FALSE!!!
* use `help test` to see all the things you can test using bash

## vid 6: comparing values w/ test
[...] is an alias for the `test` built-in
* to get help with the built-in, use `help test`
* `test` returns either 0 meaning success, or 1 which means failure
* conversely, most languages treat 0 as false and 1 as true, but for `test our return value comes from the system level paradigm where 0 means successfule execution of a program

* [ "cat" =/</> "cat" ]; for checking equivalence of strings
* [ 3 -lt 5 ]; for checking numbers
* [ ! 3 -lt 5 ]; to negate the result
* [[ ... ]]; extended test supports supports comparisons that test runs and adds other features
* [[ 4 -lt 3 ]];
* [[ -d ~ && -a /bin/bash ]]; compound check
* [[ -d ~ || -a /bin/bash ]]; compound check
* [[ -d ~ ]] && echo "~ is a directory"; will only run command if check comes back true
* [[ "cat" =~ c.* ]]; use regular expression in check

## vid 7: formatting and styling text output
* echo -e ...; -e tells bash/command to interpret escape characters such as \t, \n, etc

## vid 8: formatting output with printf
* form: printf "..." ...
* printf "The results are: %d and %d\n" $((2 + 2)) $((3 / 1))
* equivalent to:
* echo "The results are: $((2 + 2)) and $((3 / 1))"
* %d - digit, %s - string

## vid 9: arrays
* bash suports 2 types of arrays: indexed arrays & associative arrays
* eg: snacks=("apple" "banana" "orange") -- indexed arrays
* accessing: echo ${snacks[2]}; snacks[5]="grapes"; snacks+=("mango")
* echo ${snacks[@]} -- prints all elements in the list
* for i in {0..6}; do echo "$i: ${snacks[i]}"; done
* associative arrays
* declare -A office
* office[city]="San Francisco"
* office["building name"]="HQ West"
* echo ${office["building name"]} is in ${office[city]}
* nested/2D arrays are difficult in bash, move to another language
