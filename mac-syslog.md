cron log to file
---
Much easier to simply add the following to /etc/syslog.conf :
```
cron.* /var/log/cron.log 
```
Then restart syslog
```shell
sudo launchctl unload /System/Library/LaunchDaemons/com.apple.syslogd.plist 
sudo launchctl load /System/Library/LaunchDaemons/com.apple.syslogd.plist 
```
