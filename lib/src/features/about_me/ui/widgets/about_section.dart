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
    return ResponsiveSection(
        backgroundColor: AppColors.darkerBackground,
        child: Padding(
          padding: EdgeInsets.all(AppMargins.cardPadding),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.of(context).name,
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                color: AppColors.black,
                                fontWeight: FontWeight.w900,
                              ),
                    ),
                    AppMargins.halfPadding.ph,
                    Text(
                      Strings.of(context).jobTitle,
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: AppColors.darkGrey,
                              ),
                    ),
                    AppMargins.quadPadding.ph,
                    Text(
                      Strings.of(context).about,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.black,
                          ),
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
                ),
              ),
              AppMargins.appBorder.pw,
              Card(
                elevation: AppElevation.elevation1,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(AppBorders.cardBorder / 2)),
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(AppBorders.cardBorder / 2),
                  child: Image.asset(
                    "assets/images/image_1.jpeg",
                    fit: BoxFit.cover,
                    width: 320,
                    height: 320,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
