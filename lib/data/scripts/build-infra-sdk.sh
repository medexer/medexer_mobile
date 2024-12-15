echo "...[BUILD-AUTH-SDK-CODE-PROCESSING]"
echo " "

cd ../infra_sdk/auth
# rm -rf .dart_tool
# rm pubspec.lock

flutter pub get
flutter pub upgrade

dart run build_runner build --delete-conflicting-outputs

echo " "
echo "...[BUILD-AUTH-SDK-CODE-SUCCESS]"
echo " "


# echo "...[REDIRECT-TO-SDK-ROOT-DIR]"
# echo " "

# cd ../

# echo "...[REDIRECTED-TO-SDK-ROOT-DIR]"
# echo " "



echo "...[BUILD-ACCOUNT-SDK-CODE-PROCESSING]"
echo " "

cd ../account
# rm -rf .dart_tool
# rm pubspec.lock

flutter pub get
flutter pub upgrade

dart run build_runner build --delete-conflicting-outputs

echo " "
echo "...[BUILD-ACCOUNT-SDK-CODE-SUCCESS]"
echo " "



# echo "...[REDIRECT-TO-SDK-ROOT-DIR]"
# echo " "

# cd ../

# echo "...[REDIRECTED-TO-SDK-ROOT-DIR]"
# echo " "



echo "...[BUILD-DONOR-SDK-CODE-PROCESSING]"
echo " "

cd ../donor
# rm -rf .dart_tool
# rm pubspec.lock

flutter pub get
flutter pub upgrade

dart run build_runner build --delete-conflicting-outputs

echo " "
echo "...[BUILD-DONOR-SDK-CODE-SUCCESS]"
echo " "