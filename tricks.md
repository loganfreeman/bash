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
