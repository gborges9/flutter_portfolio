import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/app/theme/elevation.dart';
import 'package:flutter_portfolio/src/features/app/theme/margins.dart';
import 'package:flutter_portfolio/src/features/app/ui/widgets/content_card.dart';
import 'package:flutter_portfolio/src/infrastructure/localization/strings.dart';
import 'package:gbx_core/gbx_core.dart';

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
          if (hasRelatedSkills) AppMargins.doublePadding.ph,
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
