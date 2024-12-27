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




echo ""
echo "[BUILD-APK-PROCESSING]"

flutter build appbundle

echo ""
echo "[BUILD-APK-SUCCESS]"
echo ""