import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/app/theme/color.dart';
import 'package:flutter_portfolio/src/features/app/theme/margins.dart';
import 'package:flutter_portfolio/src/features/app/ui/widgets/responsive_section.dart';
import 'package:flutter_portfolio/src/infrastructure/localization/strings.dart';
import 'package:gbx_core/gbx_core.dart';

class WhatIDoSection extends StatelessWidget {
  const WhatIDoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSection(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: double.infinity),
          IntrinsicHeight(
            child: Row(
              children: [
                Container(
                  width: AppMargins.padding,
                  color: AppColors.primary,
                ),
                AppMargins.doublePadding.pw,
                Expanded(
                  child: Text(
                    Strings.of(context).whatIDoTitle,
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(color: AppColors.black),
                  ),
                ),
              ],
            ),
          ),
          100.0.ph,
        ],
      ),
    );
  }
}
