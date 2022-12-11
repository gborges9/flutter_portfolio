import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/app/theme/margins.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({super.key, required this.title, this.margin});

  final Widget title;
  final EdgeInsets? margin;

  static EdgeInsets get defaultMargin => EdgeInsets.symmetric(
        horizontal: AppPadding.quadPadding,
      ).copyWith(top: AppPadding.quadPadding);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? defaultMargin,
      child: DefaultTextStyle(
        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
              fontWeight: FontWeight.bold,
            ),
        child: title,
      ),
    );
  }
}
