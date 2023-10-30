# Pipes and Redirections

* `|` pipes one program/command output to the input of another, eg.: cat file.txt | wc -l
* `>` redirects command output to a file (overwrites prior content), eg.: ls /notrealdir 1>output.txt 2>error.txt
    * use 1 or 2 to grab command output and error output respectively
* `<` redirect the contents of a file into a command, eg.: cat < file.txt
* `>>` appends output to a file rather than overwrites
* `<<` this is a thing, but I don't care about it
