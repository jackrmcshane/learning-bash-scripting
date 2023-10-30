# Pipes and Redirections

* `|` pipes one program/command output to the input of another, e.g.: cat file.txt | wc -l
* `>` redirects command output to a file (overwrites prior content), e.g.: ls /notrealdir 1>output.txt 2>error.txt
    * use 1 or 2 to grab command output and error output respectively
* `<` redirect the contents of a file into a command, e.g.: cat < file.txt
* `>>` appends output to a file rather than overwrites
* `<<` this is a thing, but I don't care about it

# Commands and Built-Ins

* Bash has both builtins and commands, sometimes has the both a builtin and command version of a program
    * can check which you are using by running `command -V _program_name_`
    * can explicitly call one of the versions by specifying either `command` or `builtin` before the program call, e.g.
        * builtin echo hello
        * command echo hello
    * builtins take precedence!!
    * builtins use `help` commands use `man`
* Builtins/Commands
    * echo -- note: ends line w/ newline
    * printf

# Brackets and Braces in Bash

* `()[]{}` act differently in bash than in other languages
* often times, they can act as their own commands

# Expansions and Substitutions

* ~ --> tilde expansion ($HOME directory)
* {...} --> brace expansion
* ${...} --> parameter expansion
* $(...) --> command substitution
* $((...)) --> Arithmetic expansion

# Brace expansion

* {...} --> brace expansion
    * creates sets or ranges
    * e.g. echo /tmp/{one,two,three}/file.txt --> echoes the 3 you imagine
    * e.g. echo /tmp/{1..3}/file.txt --> echoes 3 dirs
    * e.g. echo {10..1} --> 10 9 8 7 6 5 4 3 2 1
    * e.g. echo {01..10} --> 01 02 03 04 05 06 07 08 09 10 --> useful for filename creation, etc.
    * e.g. echo {a..z}; echo {Z..A} --> also work how you think
    * e.g. echo {1..30..3} --> 1 4 7 10 13 16 19 22 25 28
    * e.g. echo {a..k..2} --> a c e g i k
    * e.g. touch file_{01..12}{a..d} --> works the way you hope it would

# parameter expansion

a="hello world"
echo $a; echo ${a} --> same output: hello world
echo ${a:1:9} --> ello worl
echo ${a/world/everybody} --> hello everybody

see "first_script.sh"

# command substitution
