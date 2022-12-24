import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/app/theme/margins.dart';
import 'package:flutter_portfolio/src/features/app/ui/widgets/indicator_title.dart';
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
          IndicatorTitle(
            title: Text(Strings.of(context).whatIDoTitle),
          ),
          AppMargins.doublePadding.ph,
        ],
      ),
    );
  }
}
