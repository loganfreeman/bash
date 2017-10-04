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
