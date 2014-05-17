#!/bin/sh
xctool -workspace $APP_NAME.xcworkspace -scheme $APP_NAME -sdk iphoneos -configuration Release clean build OBJROOT=$PWD/build SYMROOT=$PWD/build ONLY_ACTIVE_ARCH=NO
