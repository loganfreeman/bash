Links
---
- [launchd](http://launchd.info/)
- [luncy](https://github.com/eddiezane/lunchy)
- [A Golang port of lunchy, a friendly wrapper for launchctl](https://github.com/bennylope/houston)
- [homebrew services](https://github.com/AdamEdgett/homebrew-services)
- [Performance driven, launchctl wrapper written in Golang](https://github.com/kkirsche/launchy)
- [A simpler interface to OS X's launchctl](https://github.com/epochblue/lunchy.sh)

Job definitions
---
```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
	<dict>
		<key>Label</key>
		<string>com.example.app</string>
		<key>Program</key>
		<string>/Users/Me/Scripts/cleanup.sh</string>
		<key>RunAtLoad</key>
		<true/>
	</dict>
</plist>
```

