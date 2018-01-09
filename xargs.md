[Linux and Unix xargs command tutorial with examples](https://shapeshed.com/unix-xargs/)

[How to use the xargs argument twice in the command on Linux?](https://www.systutorials.com/qa/1986/how-to-use-the-xargs-argument-twice-in-the-command-on-linux)

How to run multiple commands with xargs
---
It is possible to run multiple commands with xargs by using the -I flag. This replaces occurrences of the argument with the argument passed to xargs. 
```
cat foo.txt
one
two
three

cat foo.txt | xargs -I % sh -c 'echo %; mkdir %'
one 
two
three

ls 
one two three
```

kill all mysql process
---
```
ps aux | grep mysql | grep -v grep | sed 's/\s\+/ /g' | cut -d' ' -f2 | xargs kill -9
```

xargs and curl
---
```
cat examples | xargs -I % curl -u admin:password https://qiming.herokuapp.com/girls/xingge/%
```


remove comments in all java files
---
```
find src -name "*.java" -print0 | xargs -0 sed -i -e'/\/\*/{:loop;/\/\*.*\*\//{d;b out};N;b loop};:out'
```

cp all files added from branch a to branch b to tmp directory
---
```
git diff --name-status release/uofu-release-3.0.0.1b..release/uofu-release-3.0.0.1a -- lib | grep ^A | awk '{print $2}' | xargs -I % cp % tmp/lib/
```

cp all png files added
---
```
git diff --name-status release/uofu-release-3.0.0.1b..release/uofu-release-3.0.0.1a | grep ^A | grep png | awk '{print $2}' | xargs -I % rsync -R % tmp/
```

batch convert xlsx to csv
---
```
ls | grep \.xlsx$ | sed 'p;s/\.xlsx/\.csv/' | xargs -n2 ssconvert
```

```
ls *.svg.png | xargs basename -s .svg.png | xargs -I {} mv {}.svg.png {}.png
```
