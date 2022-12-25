import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/skills/data/skill.dart';

class WhatIDo {
  final String Function(BuildContext context) getTitle, getBody;
  final String? headerImagePath;
  final List<Skill> skills;

  WhatIDo({
    required String Function(BuildContext context) titleBuilder,
    required String Function(BuildContext context) bodyBuilder,
    this.headerImagePath,
    this.skills = const [],
  })  : getTitle = titleBuilder,
        getBody = bodyBuilder;
}
