echo "[DELETING-OLD-BUILD-DIR]"

rm -rf build 

echo "[DELETED-OLD-BUILD-DIR]"
echo ""




echo "[FLUTTER-CLEAN-PROCESSING]"
echo ""

flutter clean

echo ""
echo "[FLUTTER-CLEAN-SUCCESS]"




echo ""
echo "[FETCH-PACKAGES-PROCESSING]"

dart pub get

echo "[FETCH-PACKAGES-SUCCESS]"
echo ""




echo "[BUILD-APK-PROCESSING]"
echo ""

flutter build apk

echo ""
echo "[BUILD-APK-SUCCESS]"
echo ""

echo ""
echo ""

cd ./ios

echo ""
echo "[POD-INSTALL-PROCESSING]"
echo ""

pod install

echo ""
echo "[POD-INSTALL-SUCCESSFUL]"
echo ""

cd ../

echo "[BUILD-IOS-IPA-PROCESSING]"
echo ""

flutter build ipa

echo ""
echo "[BUILD-IOS-IPA-SUCCESS]"
echo ""
