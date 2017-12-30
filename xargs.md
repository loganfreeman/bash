[Linux and Unix xargs command tutorial with examples](https://shapeshed.com/unix-xargs/)

[How to use the xargs argument twice in the command on Linux?](https://www.systutorials.com/qa/1986/how-to-use-the-xargs-argument-twice-in-the-command-on-linux)

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
