kill all mysql process
```
ps aux | grep mysql | grep -v grep | sed 's/\s\+/ /g' | cut -d' ' -f2 | xargs kill -9
```
