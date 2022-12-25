import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/app/theme/elevation.dart';
import 'package:flutter_portfolio/src/features/app/theme/margins.dart';
import 'package:flutter_portfolio/src/features/app/ui/widgets/content_card.dart';
import 'package:flutter_portfolio/src/features/skills/data/skill.dart';
import 'package:flutter_portfolio/src/features/skills/data/what_i_do.dart';
import 'package:flutter_portfolio/src/infrastructure/localization/strings.dart';
import 'package:gbx_core/gbx_core.dart';

class WhatIDoCard extends StatelessWidget {
  const WhatIDoCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  final WhatIDo data;

  @override
  Widget build(BuildContext context) {
    bool hasRelatedSkills = data.skills.isNotEmpty;
    return ContentCard(
      elevation: AppElevation.elevation2,
      title: Text(data.getTitle(context)),
      trailing: data.headerImagePath != null
          ? Container(
              height: 48,
              width: 48,
              margin: EdgeInsets.all(AppMargins.triplePadding),
              child: Image.asset(data.headerImagePath!),
            )
          : null,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(data.getBody(context)),
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
                children: data.skills
                    .map<Widget>((e) => _SkillItem(skill: e))
                    .toList()
                    .addInBetween(AppMargins.doublePadding.pw),
              ),
            ),
        ],
      ),
    );
  }
}

class _SkillItem extends StatelessWidget {
  final Skill skill;
  final bool showTitle;
  final double imageSize;

  const _SkillItem({
    required this.skill,
    this.showTitle = false,
    this.imageSize = 32,
  });

  @override
  Widget build(BuildContext context) {
    Widget child = Tooltip(
      preferBelow: true,
      message: showTitle ? null : skill.name,
      child: Image.asset(
        skill.imagePath,
        width: imageSize,
        height: imageSize,
        fit: BoxFit.fitHeight,
      ),
    );
    if (showTitle) {
      child = Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          child,
          AppMargins.padding.ph,
          Text(
            skill.name,
            style: Theme.of(context).textTheme.labelSmall,
            textAlign: TextAlign.center,
          ),
        ],
      );
    }
    return child;
  }
}
