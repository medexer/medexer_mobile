echo "...[REBUILDING-AUTH-SDK-PROCESSING]"
echo " "

openapi-generator generate -i https://www.api.medexer.livestocx.xyz/docs/auth-service-json -g dart-dio -o ../infra_sdk/auth --enable-post-process-file --additional-properties=pubName=auth_sdk,pubLibrary=auth_api.api
# openapi-generator generate -i https://www.staging-api.medexer.livestocx.xyz/docs/auth-service-json -g dart-dio -o ../infra_sdk/auth --enable-post-process-file --additional-properties=pubName=auth_sdk,pubLibrary=auth_api.api

echo " "
echo "...[REBUILDING-AUTH-SDK-SUCCESS]"
echo " "


echo "...[REBUILDING-ACCOUNT-SDK-PROCESSING]"
echo " "

openapi-generator generate -i https://www.api.medexer.livestocx.xyz/docs/account-service-json -g dart-dio -o ../infra_sdk/account --enable-post-process-file --additional-properties=pubName=account_sdk,pubLibrary=account_api.api
# openapi-generator generate -i https://www.staging-api.medexer.livestocx.xyz/docs/account-service-json -g dart-dio -o ../infra_sdk/account --enable-post-process-file --additional-properties=pubName=account_sdk,pubLibrary=account_api.api

echo " "
echo "...[REBUILDING-ACCOUNT-SDK-SUCCESS]"
echo " "


echo "...[REBUILDING-DONOR-SDK-PROCESSING]"
echo " "

openapi-generator generate -i https://www.api.medexer.livestocx.xyz/docs/donor-service-json -g dart-dio -o ../infra_sdk/donor --enable-post-process-file --additional-properties=pubName=donor_sdk,pubLibrary=donor_api.api
# openapi-generator generate -i https://www.staging-api.medexer.livestocx.xyz/docs/donor-service-json -g dart-dio -o ../infra_sdk/donor --enable-post-process-file --additional-properties=pubName=donor_sdk,pubLibrary=donor_api.api

echo " "
echo "...[REBUILDING-DONOR-SDK-SUCCESS]"
echo " "

sh update-infra-sdk-files.sh

sh build-infra-sdk.sh
