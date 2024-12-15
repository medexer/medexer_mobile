import 'package:flutter/material.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/middlewares/index.dart';
import 'package:medexer/components/text/subtitle_text.dart';

class AuthBottomNavigationBanner extends StatefulWidget {
  const AuthBottomNavigationBanner({super.key});

  @override
  State<AuthBottomNavigationBanner> createState() =>
      _AuthBottomNavigationBannerState();
}

class _AuthBottomNavigationBannerState
    extends State<AuthBottomNavigationBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.horizontal_10,
      ),
      height: AppSizes.screenHeight(context) * 0.1,
      child: Wrap(
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          SubtitleText(
            maxLines: 10,
            text: 'By continuing, you automatically accept our ',
          ),
          InkWell(
            onTap: () {
              launchExternalBrowserUrl(
                'https://medexer.com.ng/terms',
              );
            },
            overlayColor: WidgetStateProperty.all(
              Colors.transparent,
            ),
            child: SubtitleText(
              maxLines: 10,
              weight: FontWeight.bold,
              text: 'Terms & Conditions ',
            ),
          ),
          SubtitleText(
            maxLines: 10,
            text: 'and ',
          ),
          InkWell(
            onTap: () {
              launchExternalBrowserUrl(
                'https://medexer.com.ng/privacy-policy',
              );
            },
            overlayColor: WidgetStateProperty.all(
              Colors.transparent,
            ),
            child: SubtitleText(
              maxLines: 10,
              weight: FontWeight.bold,
              text: 'Privacy Policy.',
            ),
          ),
        ],
      ),
    );
  }
}
