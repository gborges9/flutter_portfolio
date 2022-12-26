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
      Skills.python,
      Skills.kotlin,
    ],
  ),
  WhatIDo(
    titleBuilder: (context) => Strings.of(context).whatIDoAndroidApp,
    bodyBuilder: (context) => Strings.of(context).whatIDoAndroidAppBody,
    headerImagePath: "assets/images/android_app_dev.png",
    skills: [
      Skills.androidDev,
      Skills.kotlin,
      Skills.java,
    ],
  ),
];
