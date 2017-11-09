rename and copy
---
```
for file in config/*.example; do cp $file ${file%%.example}; done
```

lists
---
- [Shell Parameter Expansion](https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html#Shell-Parameter-Expansion)
