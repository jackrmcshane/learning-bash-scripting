# Pipes and Redirections

* `|` pipes one program/command output to the input of another, eg.: cat file.txt | wc -l
* `>` redirects command output to a file (overwrites prior content), eg.: ls /notrealdir 1>output.txt 2>error.txt
    * use 1 or 2 to grab command output and error output respectively
* `<` redirect the contents of a file into a command, eg.: cat < file.txt
* `>>` appends output to a file rather than overwrites
* `<<` this is a thing, but I don't care about it

# Commands and Built-Ins

* Bash has both builtins and commands, sometimes has the both a builtin and command version of a program
    * can check which you are using by running `command -V _program_name_`
    * can explicitly call one of the versions by specifying either `command` or `builtin` before the program call, eg.
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
