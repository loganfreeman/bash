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
# -n switch means no-action; -v means verbose
find ./src -name "stock*" -exec rename -v -n 's/stock/traffic/' '{}' \;
```

find and replace files recursively
---
```shell
find ./src -name "*.txt" -print0 | xargs -0 sed -i'' -e 's/foo/bar/g'
# This will remove the xargs dependency
find . -type f -name "*.txt" -exec sed -i'' -e 's/foo/bar/g' {} +
```

xargs explained [here](https://linux.die.net/man/1/xargs)

sed explained [here](http://www.grymoire.com/Unix/Sed.html#uh-62h)

exec explained [here](https://unix.stackexchange.com/questions/195939/what-is-meaning-of-in-finds-exec-command)


The difference between ; (semicolon) or + (plus sign) is how the arguments are passed into find's -exec/-execdir parameter. For example:

1. using ; will execute multiple commands (separately for each argument)

```
$ find /etc/rc* -exec echo Arg: {} ';'
Arg: /etc/rc.common
Arg: /etc/rc.common~previous
Arg: /etc/rc.local
Arg: /etc/rc.netboot
```
2. using + will execute the least possible commands (as the arguments are combined together). It's very similar to how xargs command works, so it will use as many arguments per command as possible to avoid exceeding the maximum limit of arguments per line.

```
$ find /etc/rc* -exec echo Arg: {} '+'
Arg: /etc/rc.common /etc/rc.common~previous /etc/rc.local /etc/rc.netboot
```

cp list of files
---
```
# diff-filter=A only files that are added in the latter branch
git diff --name-only --diff-filter=A development release -- lib/ | xargs -J % cp % tmp/lib/
```
