import 'package:test/test.dart';
import 'package:auth_sdk/auth_sdk.dart';


/// tests for AuthApi
void main() {
  final instance = AuthSdk().getAuthApi();

  group(AuthApi, () {
    //Future<SigninResponsePayload> authControllerSigninAs(SigninAsDTO signinAsDTO) async
    test('test authControllerSigninAs', () async {
      // TODO
    });

    //Future<SigninResponsePayload> authControllerSigninDonor(SigninDTO signinDTO) async
    test('test authControllerSigninDonor', () async {
      // TODO
    });

    //Future<SigninResponsePayload> authControllerSigninOAuth(OAuthSigninDTO oAuthSigninDTO) async
    test('test authControllerSigninOAuth', () async {
      // TODO
    });

    //Future<SignupResponsePayload> authControllerSignupCompleteVerification(CompleteSignupVerificationDTO completeSignupVerificationDTO) async
    test('test authControllerSignupCompleteVerification', () async {
      // TODO
    });

    //Future<SigninResponsePayload> authControllerSignupDonationCenter(CreateDonationCenterAccountDTO createDonationCenterAccountDTO) async
    test('test authControllerSignupDonationCenter', () async {
      // TODO
    });

    //Future<SignupResponsePayload> authControllerSignupDonor(CreateAccountDTO createAccountDTO) async
    test('test authControllerSignupDonor', () async {
      // TODO
    });

  });
}
