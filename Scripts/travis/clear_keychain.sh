#!/bin/sh
security delete-keychain ios-build.keychain
rm -rf ~/Library/MobileDevice/Provisioning\ Profiles/$PROFILE_NAME.mobileprovision
