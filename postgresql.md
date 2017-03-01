manually start:
```
pg_ctl -D /usr/local/var/postgres -l logfile start
```


[how-to-launch-postgresql-after-upgrade](https://coderwall.com/p/ti4amw/how-to-launch-postgresql-after-upgrade)


createuser
```
brew update
brew install postgres
initdb /usr/local/var/postgres
/usr/local/Cellar/postgresql/<version>/bin/createuser -s postgres
```

To start server at startup
```
mkdir -p ~/Library/LaunchAgents
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
```


[upgrade](https://collectiveidea.com/blog/archives/2016/01/08/postgresql95-upgrade-with-homebrew)

[pg_upgrade](https://www.postgresql.org/docs/9.6/static/pgupgrade.html)
```
pg_upgrade \
  -d /usr/local/var/postgres \
  -D /usr/local/var/postgres9.6 \
  -b /usr/local/Cellar/postgresql/9.5.5/bin/ \
  -B /usr/local/Cellar/postgresql/9.6.2/bin/ \
  -v
```
