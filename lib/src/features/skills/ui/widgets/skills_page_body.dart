import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/skills/ui/widgets/what_i_do_section.dart';

class SkillsPageBody extends StatelessWidget {
  const SkillsPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(width: double.infinity),
        WhatIDoSection(),
      ],
    );
  }
}
