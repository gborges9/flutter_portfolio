import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/app/theme/borders.dart';
import 'package:flutter_portfolio/src/features/app/theme/margins.dart';
import 'package:flutter_portfolio/src/features/app/ui/widgets/header_title.dart';
import 'package:gbx_core/gbx_core.dart';

class ContentCard extends StatelessWidget {
  const ContentCard({
    super.key,
    this.title,
    this.content,
    this.elevation,
    this.header,
    this.leading,
    this.trailing,
  });

  final Widget? title, content, header, leading, trailing;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    Widget child = Card(
      margin: EdgeInsets.all(AppMargins.cardPadding),
      elevation: elevation,
      child: buildCardContent(context),
    );

    if (header == null) {
      return child;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (header != null) HeaderTitle(title: header!),
        child,
      ],
    );
  }

  Widget buildCardContent(BuildContext context) {
    final child = Padding(
      padding: EdgeInsets.symmetric(
        vertical: AppMargins.quadPadding,
        horizontal: AppMargins.quadPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
            DefaultTextStyle(
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontWeight: FontWeight.bold,
                  ),
              child: title!,
            ),
          if (title != null && content != null) AppMargins.triplePadding.ph,
          DefaultTextStyle(
            style: Theme.of(context).textTheme.bodyLarge!,
            child: SizedBox(
              width: double.infinity,
              child: content,
            ),
          ),
        ],
      ),
    );

    if (leading == null && trailing == null) {
      return child;
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (leading != null)
          ClipRRect(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(AppBorders.defaultBorder),
            ),
            child: leading!,
          ),
        Expanded(child: child),
        if (trailing != null)
          ClipRRect(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(AppBorders.defaultBorder),
            ),
            child: trailing!,
          ),
      ],
    );
  }
}
