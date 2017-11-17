What does set -e mean in a bash script?
---
From help set :
```
  -e  Exit immediately if a command exits with a non-zero status.
```
But it's not very reliable and considered as a bad practice, better use :
```
trap 'do_something' ERR
```
to run `do_something` function when errors will occurs.

unix set command set — “$@” “$i” meaning
---
```
for i in "$@"
do 
  set -- “$@” "$i" // what does it mean?
done
```

It's appending the value of $i onto the end of the positional parameters.

```
$ set -- a b c
$ echo "$@"
a b c
$ set -- "$@" "$@"
echo "$@"
a b c a b c
```
