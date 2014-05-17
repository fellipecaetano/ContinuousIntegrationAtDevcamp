#!/bin/sh
xctool -workspace $APP_NAME.xcworkspace -scheme $APP_NAME -sdk iphonesimulator7.1 clean build test -freshInstall
