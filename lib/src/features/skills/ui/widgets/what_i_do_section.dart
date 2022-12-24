import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/app/theme/elevation.dart';
import 'package:flutter_portfolio/src/features/app/theme/margins.dart';
import 'package:flutter_portfolio/src/features/app/ui/widgets/content_card.dart';
import 'package:flutter_portfolio/src/features/app/ui/widgets/indicator_title.dart';
import 'package:flutter_portfolio/src/features/app/ui/widgets/responsive_section.dart';
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
      title: const Text("Android Platform Development"),
      leading: Image.asset("assets/images/android_plat.png"),
      content:
          Text(List.generate(4, (index) => "• item ${index + 1}").join("\n")),
      relatedSkills: <Widget>[
        Image.asset(
          "assets/images/java.png",
          fit: BoxFit.fitHeight,
        ),
        Image.asset(
          "assets/images/kotlin.png",
          fit: BoxFit.fitHeight,
        ),
      ]
          .map((e) => SizedBox(height: 40, child: e))
          .toList()
          .addInBetween(AppMargins.doublePadding.pw),
    );
  }
}

class WhatIDoCard extends StatelessWidget {
  const WhatIDoCard({
    Key? key,
    required this.title,
    this.leading,
    this.content,
    this.relatedSkills = const [],
  }) : super(key: key);

  final Widget title;
  final Widget? leading, content;
  final List<Widget> relatedSkills;

  @override
  Widget build(BuildContext context) {
    bool hasRelatedSkills = relatedSkills.isNotEmpty;
    return ContentCard(
      elevation: AppElevation.elevation2,
      title: title,
      trailing: Container(
        height: 48,
        width: 48,
        margin: EdgeInsets.all(AppMargins.triplePadding),
        child: leading,
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(List.generate(4, (index) => "• Item ${index + 1}").join("\n")),
          if (hasRelatedSkills) AppMargins.quadPadding.ph,
          if (hasRelatedSkills)
            Text(
              Strings.of(context).relatedSkills,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          if (hasRelatedSkills) AppMargins.padding.ph,
          if (hasRelatedSkills)
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: relatedSkills,
              ),
            ),
        ],
      ),
    );
  }
}
