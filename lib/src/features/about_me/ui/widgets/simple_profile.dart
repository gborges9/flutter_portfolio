import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/about_me/ui/widgets/download_cv_button.dart';
import 'package:flutter_portfolio/src/features/about_me/ui/widgets/social_media_buttons.dart';
import 'package:flutter_portfolio/src/features/app/theme/borders.dart';
import 'package:flutter_portfolio/src/features/app/theme/margins.dart';
import 'package:flutter_portfolio/src/infrastructure/localization/strings.dart';
import 'package:gbx_core/gbx_core.dart';

class SimpleProfile extends StatelessWidget {
  const SimpleProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final hPadding = EdgeInsets.symmetric(horizontal: AppMargins.appBorder);
    return Column(
      children: [
        _images(context),
        AppMargins.padding.ph,
        profileText(context),
        AppMargins.padding.ph,
        const SocialMediaButtons(),
        AppMargins.doublePadding.ph,
        const Divider(height: 0),
      ],
    );
  }

  Widget _images(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(AppBorders.navBorder),
          ),
          child: Image.asset(
            "assets/images/profile_background.jpeg",
            fit: BoxFit.fitHeight,
            height: 128,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 52),
          child: CircleAvatar(
            radius: 52,
            foregroundImage: AssetImage("assets/images/profile.jpeg"),
          ),
        ),
      ],
    );
  }

  Widget profileText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          double.infinity.pw,
          Text(
            Strings.of(context).name,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            Strings.of(context).jobTitle,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          AppMargins.padding.ph,
          Text(
            Strings.of(context).helloIntroText,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
