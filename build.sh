#!/bin/bash

echo 'Build Android Release Resource'
flutter build appbundle --target-platform android-arm,android-arm64,android-x64

echo ''
echo 'Build iOS Release Resource'
flutter build ios --release

ARCHIVE_PATH="$PWD/build/ios/Runner.xcarchive"
IPA_PATH="$PWD/build/ios/Runner.ipa"
xcodebuild -quiet -workspace ios/Runner.xcworkspace -scheme Runner -sdk iphoneos -configuration Release archive -archivePath $ARCHIVE_PATH
xcodebuild -quiet -allowProvisioningUpdates -exportArchive -archivePath $ARCHIVE_PATH -exportOptionsPlist ipaOptions.plist -exportPath $IPA_PATH

echo ''
echo 'Android Release Resource (ipa)'
find build/app/outputs -name "*.aab" -type f

echo ''
echo 'iOS Release Resource (ipa)'
find build/ios -name "*.ipa" -type f
