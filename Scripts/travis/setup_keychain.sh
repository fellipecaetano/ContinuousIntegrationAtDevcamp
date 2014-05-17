#!/bin/sh
security create-keychain -p travis ios-build.keychain
security default-keychain -s ios-build.keychain
security import ./Scripts/travis/certs/apple.cer -k ~/Library/Keychains/ios-build.keychain -T /usr/bin/codesign
security import ./Scripts/travis/certs/dist.cer -k ~/Library/Keychains/ios-build.keychain -T /usr/bin/codesign
security import ./Scripts/travis/certs/dist.p12 -k ~/Library/Keychains/ios-build.keychain -T /usr/bin/codesign -P "$DISTRIBUTION_KEY_PASSWORD"
mkdir -p ~/Library/MobileDevice/Provisioning\ Profiles/
cp ./Scripts/travis/provision/$PROFILE_NAME.mobileprovision ~/Library/MobileDevice/Provisioning\ Profiles/
