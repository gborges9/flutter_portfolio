import 'package:flutter_portfolio/src/features/skills/data/skill.dart';
import 'package:flutter_portfolio/src/features/skills/data/what_i_do.dart';
import 'package:flutter_portfolio/src/infrastructure/localization/strings.dart';

final whatIdoItems = <WhatIDo>[
  WhatIDo(
    titleBuilder: (context) => Strings.of(context).whatIDoAndroidPlat,
    bodyBuilder: (context) => Strings.of(context).whatIDoAndroidPlatBody,
    headerImagePath: "assets/images/android_plat.png",
    skills: [
      Skills.androidDev,
      Skills.java,
      Skills.kotlin,
      Skills.python,
    ],
  ),
];
