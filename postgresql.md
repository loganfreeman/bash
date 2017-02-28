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

or
```
sudo -u postgres createuser --superuser $USER
```

To start server at startup
```
mkdir -p ~/Library/LaunchAgents
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
```
