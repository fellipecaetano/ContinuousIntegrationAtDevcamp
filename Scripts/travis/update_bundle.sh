#!/bin/sh
xctool -workspace ContinuousIntegrationAtDevCamp.xcworkspace -scheme ContinuousIntegrationAtDevCamp -sdk iphoneos -configuration Release clean build OBJROOT=$PWD/build SYMROOT=$PWD/build ONLY_ACTIVE_ARCH=NO
