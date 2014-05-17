#!/bin/sh
xctool -workspace ContinuousIntegrationAtDevCamp.xcworkspace -scheme ContinuousIntegrationAtDevCamp -sdk iphonesimulator7.1 clean build test -freshInstall
