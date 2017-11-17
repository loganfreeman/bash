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
