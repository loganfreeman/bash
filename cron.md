cron log
---
- [How to log cron jobs in OS X El Capitan 10.11](http://www.angryox.com/blog/entry/53/how_to_log_cron_jobs_in_os_x_e)


Much easier to simply add the following to /etc/syslog.conf :
```
cron.* /var/log/cron.log 
```
Then restart syslog
```
sudo launchctl unload /System/Library/LaunchDaemons/com.apple.syslogd.plist 
sudo launchctl load /System/Library/LaunchDaemons/com.apple.syslogd.plist 
```
clean up files automatically
---
- [cron-job-to-delete-files-older-than-3-days](http://unix.stackexchange.com/questions/136804/cron-job-to-delete-files-older-than-3-days)
