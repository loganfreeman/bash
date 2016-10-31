launch_osx() {
  LSREGISTER=/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister
  CHROME_CANARY_PATH=${CHROME_CANARY_PATH:-$($LSREGISTER -dump | grep -i "google chrome canary.app$" | awk '{$1=""; print $0}' | head -n1 | xargs)}
  CHROME_CANARY_EXEC_PATH="${CHROME_CANARY_PATH}/Contents/MacOS/Google Chrome Canary"
  CHROME_PATH="$CHROME_CANARY_PATH"
  log_warning
  if [ ! -f "$CHROME_CANARY_EXEC_PATH" ]; then
    echo "You must install Google Chrome Canary to use lighthouse"
    echo "You can download it from https://www.google.com/chrome/browser/canary.html"
    exit 1
  fi
  "$CHROME_CANARY_EXEC_PATH" $CHROME_FLAGS "$INITIAL_URL"
  rm -r "$TMP_PROFILE_DIR"
}
