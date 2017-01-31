- [getopts tutorial](http://wiki.bash-hackers.org/howto/getopts_tutorial)

Explain the shell command: shift $(($optind - 1))
---

`shift $((OPTIND-1))` (note OPTIND is upper case) is normally found immediately after a getopts while loop. `$OPTIND` is the number of options found by getopts.

shift n
removes n strings from the positional parameters list. Thus `shift $((OPTIND-1))` removes all the options that have been parsed by getopts from the parameters list, and so after that point, $1 will refer to the first non-option argument passed to the script.
