import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/app/theme/elevation.dart';
import 'package:flutter_portfolio/src/features/app/theme/margins.dart';
import 'package:flutter_portfolio/src/features/app/ui/widgets/content_card.dart';
import 'package:flutter_portfolio/src/features/app/ui/widgets/indicator_title.dart';
import 'package:flutter_portfolio/src/features/app/ui/widgets/responsive_section.dart';
import 'package:flutter_portfolio/src/features/skills/data/what_i_do_list.dart';
import 'package:flutter_portfolio/src/features/skills/ui/widgets/what_i_do_card.dart';
import 'package:flutter_portfolio/src/infrastructure/localization/strings.dart';
import 'package:gbx_core/gbx_core.dart';

class WhatIDoSection extends StatelessWidget {
  const WhatIDoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSection(
      horizontalMarginModifier: -AppMargins.cardPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: double.infinity),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppMargins.cardPadding),
            child: IndicatorTitle(
              title: Text(Strings.of(context).whatIDoTitle),
            ),
          ),
          AppMargins.quadPadding.ph,
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(child: buildCard(context)),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildCard(BuildContext context) {
    return WhatIDoCard(
      data: whatIdoItems.first,
    );
  }
}
