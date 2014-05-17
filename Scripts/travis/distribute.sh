#!/bin/sh
OUTPUTDIR="$PWD/build/Release-iphoneos"

RELEASE_DATE=`date '+%Y-%m-%d %H:%M:%S'`
RELEASE_NOTES="Build: $TRAVIS_BUILD_NUMBER\nUploaded: $RELEASE_DATE"

curl http://testflightapp.com/api/builds.json \
  -F file="@$OUTPUTDIR/$APP_NAME.ipa" \
  -F api_token="$TESTFLIGHT_API_TOKEN" \
  -F team_token="$TESTFLIGHT_TEAM_TOKEN" \
  -F distribution_lists='Internal' \
  -F notes="$RELEASE_NOTES"
