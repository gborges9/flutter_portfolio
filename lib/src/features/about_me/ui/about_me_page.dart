import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/about_me/ui/widgets/about_section.dart';
import 'package:flutter_portfolio/src/features/about_me/ui/widgets/what_i_do_section.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        AboutSection(),
        WhatIDoSection(),
      ],
    );
  }
}
