import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/about_me/ui/widgets/about_section.dart';
import 'package:flutter_portfolio/src/features/app/theme/margins.dart';
import 'package:gbx_core/gbx_core.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppMargins.appBorder * 2,
        vertical: AppMargins.appBorder * 2,
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            double.infinity.pw,
            const AboutSection(),
          ],
        ),
      ),
    );
  }
}
