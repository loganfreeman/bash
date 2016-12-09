Links
---
-[Monit Documentation](https://mmonit.com/monit/documentation/monit.html)

Install monit
---
```shell
yum install monit
 
systemctl enable monit.service
 
systemctl start monit.service
```

httpd.service monit control file
---
```shell
httpd.service monit control file
check process apache with pidfile /var/run/apache.pid
      start program = "/bin/systemctl start httpd.service"
      stop program = "/bin/systemctl stop httpd.service"
```
