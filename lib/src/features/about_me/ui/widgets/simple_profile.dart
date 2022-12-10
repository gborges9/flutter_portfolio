import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/about_me/ui/widgets/download_cv_button.dart';
import 'package:flutter_portfolio/src/features/about_me/ui/widgets/social_media_buttons.dart';
import 'package:flutter_portfolio/src/features/app/theme/borders.dart';
import 'package:flutter_portfolio/src/features/app/theme/margins.dart';
import 'package:flutter_portfolio/src/infrastructure/localization/strings.dart';
import 'package:gbx_core/gbx_core.dart';
import 'package:heroicons/heroicons.dart';

class SimpleProfile extends StatelessWidget {
  const SimpleProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _images(context),
        AppPadding.padding.ph,
        Text(
          Strings.of(context).name,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          Strings.of(context).jobTitle,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        AppPadding.doublePadding.ph,
        const SocialMediaButtons(),
        AppPadding.padding.ph,
        const DownloadCvButton(),
        AppPadding.triplePadding.ph,
        Divider(
          endIndent: AppPadding.appBorder,
          indent: AppPadding.appBorder,
          height: 0,
        ),
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
}
