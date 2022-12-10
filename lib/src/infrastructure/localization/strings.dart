import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

abstract class Strings {
  const Strings._();

  static AppLocalizations of(BuildContext context) =>
      AppLocalizations.of(context)!;
}
