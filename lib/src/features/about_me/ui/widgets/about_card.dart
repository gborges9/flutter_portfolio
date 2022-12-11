import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/app/ui/widgets/content_card.dart';
import 'package:flutter_portfolio/src/infrastructure/localization/strings.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({super.key, this.elevation});

  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return ContentCard(
      elevation: elevation,
      header: Text(Strings.of(context).tabAboutMe),
      content: Text(Strings.of(context).about),
    );
  }
}
