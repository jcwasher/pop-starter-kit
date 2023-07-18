#!/bin/zsh

versionNumber=$(grep -m1 '^version:' pubspec.yaml | awk '{print $2}' | tr -d "'")
perl -i -pe "s|helpers.js\?version=.*\"|helpers.js?version=$versionNumber\"|g" ./web/index.html
perl -i -pe "s|flutter.js\?version=.*\"|flutter.js?version=$versionNumber\"|g" ./web/index.html
echo "Version numbers in ./web/index.html updated to $versionNumber"
