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