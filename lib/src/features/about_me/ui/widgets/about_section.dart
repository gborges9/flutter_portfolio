import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/app/ui/widgets/content_card.dart';
import 'package:flutter_portfolio/src/infrastructure/localization/strings.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key, this.elevation});

  final double? elevation;

  @override
  Widget build(BuildContext context) {
    var image = "assets/images/image_1.jpeg";
    return ContentCard(
      leading: Image.asset(
        image,
        height: 300,
      ),
      elevation: elevation,
      title: Text(Strings.of(context).tabAboutMe),
      content: Text(Strings.of(context).about),
    );
  }
}
