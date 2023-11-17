# Section 4: Interacting with the User

## vid1: arguments in bash scripting
* see ../scripts/section4/1_args
* args are passed to script by typing them after the script name on the cli
* represented by $1, $2, ..., $n

## vid2: options
* see ../scripts/section4/2_options
* accessed using the "getopts" keyword
* can accept args of their own
* can be specified and used in any order

## vid3: input during execution
* see ../scripts/section4/3_input_during_execution
* `read` keyword allows us to gather input, pausing the script until input is provided
* input is stored in a var

## vid4: ensuring a response
* see ../scripts/section4/4_ensuring_a_response
* use `-i` to suggest a default value
