#!/bin/bash

echo "FIREBASE-APP-DISTRIBUTION-PROCESSING"
echo " "
echo " "

# Prompt for group and release note
read -p "Enter the group name: " group
read -p "Enter the release note: " release_note

echo " "
echo " "

# Firebase App Distribution command with user input
firebase appdistribution:distribute ./build/ios/ipa/tukshopp_mobile.ipa \
  --app 1:78837080015:ios:6b4dccea705c416f0b7cba \
  --groups "$group" \
  --release-notes "$release_note"

echo " "
echo " "
echo "FIREBASE-APP-DISTRIBUTION-SUCCESSFUL"
echo " "
echo " "
