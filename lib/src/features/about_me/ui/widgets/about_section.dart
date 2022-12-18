import 'package:adaptive_breakpoints/adaptive_breakpoints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/about_me/ui/widgets/download_cv_button.dart';
import 'package:flutter_portfolio/src/features/app/theme/borders.dart';
import 'package:flutter_portfolio/src/features/app/theme/color.dart';
import 'package:flutter_portfolio/src/features/app/theme/elevation.dart';
import 'package:flutter_portfolio/src/features/app/theme/margins.dart';
import 'package:flutter_portfolio/src/features/app/ui/widgets/responsive_section.dart';
import 'package:flutter_portfolio/src/infrastructure/localization/strings.dart';
import 'package:gbx_core/gbx_core.dart';
import 'package:heroicons/heroicons.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key, this.elevation});

  final double? elevation;

  @override
  Widget build(BuildContext context) {
    final windowType = getWindowType(context);
    bool isSmallScreen = windowType < AdaptiveWindowType.medium;
    final padding = isSmallScreen
        ? EdgeInsets.all(AppMargins.appBorder)
        : EdgeInsets.all(AppMargins.sectionPadding);
    return ResponsiveSection(
      backgroundColor: AppColors.darkerBackground,
      child: Padding(
        padding: padding,
        child: Column(
          children: [
            if (isSmallScreen) profileImage(context),
            if (isSmallScreen) AppMargins.doublePadding.ph,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: introItems(context, isSmallScreen),
                ),
                if (!isSmallScreen) AppMargins.appBorder.pw,
                if (!isSmallScreen)
                  SizedBox(
                    height: 240,
                    width: 240,
                    child: trailingImage(context),
                  )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget introItems(BuildContext context, bool center) {
    final textAlign = center ? TextAlign.center : TextAlign.start;
    return Column(
      crossAxisAlignment:
          center ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Text(
          Strings.of(context).name,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: AppColors.black,
                fontWeight: FontWeight.w900,
              ),
          textAlign: textAlign,
        ),
        AppMargins.halfPadding.ph,
        Text(
          Strings.of(context).jobTitle,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: AppColors.darkGrey,
              ),
          textAlign: textAlign,
        ),
        AppMargins.quadPadding.ph,
        Text(
          Strings.of(context).about,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.black,
              ),
          textAlign: textAlign,
        ),
        AppMargins.quadPadding.ph,
        Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              const DownloadCvButton(),
              AppMargins.doublePadding.pw,
              TextButton.icon(
                onPressed: () {},
                icon: const HeroIcon(HeroIcons.envelope),
                label: Text(Strings.of(context).contactButton),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget trailingImage(BuildContext context) {
    return Card(
      elevation: AppElevation.elevation1,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppBorders.cardBorder / 2)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppBorders.cardBorder / 2),
        child: Image.asset(
          "assets/images/image_1.jpeg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget profileImage(BuildContext context) {
    return const CircleAvatar(
      foregroundImage: AssetImage("assets/images/profile.jpeg"),
      radius: 88,
    );
  }
}
