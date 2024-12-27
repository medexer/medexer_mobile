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
firebase appdistribution:distribute ./build/app/outputs/flutter-apk/app-release.apk \
  --app 1:78837080015:android:57d177d541c197230b7cba \
  --groups "$group" \
  --release-notes "$release_note"

echo " "
echo " "
echo "FIREBASE-APP-DISTRIBUTION-SUCCESSFUL"
echo " "
echo " "
