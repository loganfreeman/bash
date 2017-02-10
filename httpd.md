- [How can I remove Apache2 that I have installed in Mac OS X?](http://superuser.com/questions/986775/how-can-i-remove-apache2-that-i-have-installed-in-mac-os-x)
```shell
sudo /usr/sbin/httpd -k stop
sudo launchctl unload -w /System/Library/LaunchDaemons/org.apache.httpd.plist
```
