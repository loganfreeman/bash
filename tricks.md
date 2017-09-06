[changing-extension-to-multiple-files](http://unix.stackexchange.com/questions/19654/changing-extension-to-multiple-files)
---
```shell
for f in *.txt; do
mv "$f" "$(basename "$f" .txt).text"
done
```
one liner
```
for f in *.example; do cp "$f" "$(basename "$f" .example)";  done
```


kill all mysql process
---
```
ps aux | grep mysql | grep -v grep | sed 's/\s\+/ /g' | cut -d' ' -f2 | xargs kill -9
```


kill catalina
---
```shell
ps aux | grep catalina | head -n 1 | cut -d' ' -f2 | xargs kill -9
```

clean up backup files
---
```shell
find . -name '*~' -exec rm {} \;
```

rename files using regular expression
---
```shell
find . -name "stock*" -exec rename -v -n 's/stock/traffic/' '{}' \;
```
