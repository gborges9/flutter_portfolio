import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/about_me/ui/widgets/download_cv_button.dart';
import 'package:flutter_portfolio/src/features/app/theme/color.dart';
import 'package:flutter_portfolio/src/features/app/theme/margins.dart';
import 'package:flutter_portfolio/src/features/app/ui/widgets/content_card.dart';
import 'package:flutter_portfolio/src/infrastructure/localization/strings.dart';
import 'package:gbx_core/gbx_core.dart';
import 'package:heroicons/heroicons.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key, this.elevation});

  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 14,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Strings.of(context).name,
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: AppColors.black,
                        fontWeight: FontWeight.w900,
                      ),
                ),
                AppMargins.halfPadding.ph,
                Text(
                  Strings.of(context).jobTitle,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: AppColors.darkGrey,
                      ),
                ),
                AppMargins.quadPadding.ph,
                Text(
                  Strings.of(context).about,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.darkGrey,
                      ),
                ),
                AppMargins.quadPadding.ph,
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
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
              ],
            ),
          ),
          const Spacer(),
          Flexible(
            flex: 6,
            child: Image.asset(
              "assets/images/image_1.jpeg",
              fit: BoxFit.fitWidth,
            ),
          )
        ],
      ),
    );
  }
}
