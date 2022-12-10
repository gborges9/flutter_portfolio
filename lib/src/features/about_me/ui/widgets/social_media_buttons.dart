import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/app/theme/margins.dart';
import 'package:flutter_portfolio/src/infrastructure/localization/strings.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gbx_core/gbx_core.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          onPressed: () => launch(Strings.of(context).linkedinUrl),
          icon: const FaIcon(FontAwesomeIcons.linkedin),
          padding: EdgeInsets.zero,
          splashRadius: 24,
          tooltip: Strings.of(context).linkedin,
        ),
        IconButton(
          onPressed: () => launch(Strings.of(context).githubUrl),
          icon: const FaIcon(FontAwesomeIcons.github),
          padding: EdgeInsets.zero,
          splashRadius: 24,
          tooltip: Strings.of(context).github,
        ),
        IconButton(
          onPressed: () => launch(Strings.of(context).mediumUrl),
          icon: const FaIcon(FontAwesomeIcons.medium),
          padding: EdgeInsets.zero,
          splashRadius: 24,
          tooltip: Strings.of(context).medium,
        ),
        IconButton(
          onPressed: () => launch(Strings.of(context).instagramUrl),
          icon: const FaIcon(FontAwesomeIcons.instagram),
          padding: EdgeInsets.zero,
          splashRadius: 24,
          tooltip: Strings.of(context).instagram,
        ),
      ].addInBetween(AppPadding.quadPadding.pw),
    );
  }

  Future<void> launch(String url) {
    final uri = Uri.parse(url);
    return launchUrl(uri);
  }
}
