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

couchdb
---
```shell
#################################################################
# couchdb
# http://nikosmarkopoulos.com/monitoring-couchdb-with-monit/
################################################################

check process couchdb
  with pidfile /usr/local/var/run/couchdb/couchdb.pid
  start program = "/etc/init.d/couchdb start"
  stop program = "/etc/init.d/couchdb stop"
  if failed host localhost port 5984 proto http then restart
  if failed url http://localhost:5984/ and content == '"couchdb"' then restart
  if 3 restarts within 5 cycles then timeout
  group couchdb
```
