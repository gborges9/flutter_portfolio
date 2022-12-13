import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/about_me/ui/widgets/about_section.dart';
import 'package:flutter_portfolio/src/features/app/theme/margins.dart';
import 'package:gbx_core/gbx_core.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(AppMargins.appBorder / 2).copyWith(left: 0),
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
