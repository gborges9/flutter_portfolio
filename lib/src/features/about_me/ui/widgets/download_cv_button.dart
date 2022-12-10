import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/infrastructure/localization/strings.dart';
import 'package:heroicons/heroicons.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadCvButton extends StatelessWidget {
  const DownloadCvButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () => downloadCv(context),
      icon: const HeroIcon(HeroIcons.arrowDownTray),
      label: Text(Strings.of(context).downloadCV),
    );
  }

  Future<bool> downloadCv(BuildContext context) async {
    final uri = Uri.parse(Strings.of(context).cvUrl);
    return launchUrl(uri);
  }
}
