#!/bin/sh
security delete-keychain ios-build.keychain
security default-keychain -s login.keychain
rm -rf ~/Library/MobileDevice/Provisioning\ Profiles/$PROFILE_NAME.mobileprovision
