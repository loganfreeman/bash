restart 
---
```shell
pgrep -f /usr/sbin/httpd 2> /dev/null > /dev/null
	if [ $? -eq 0 ]; then
		echo "Restarting system Apache..."
		sudo pkill -9 -f /usr/sbin/httpd
		sudo /usr/sbin/apachectl -k restart > /dev/null 2>&1
	fi
```
