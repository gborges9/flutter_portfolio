import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/app/theme/margins.dart';
import 'package:gbx_core/gbx_core.dart';

class ContentCard extends StatelessWidget {
  const ContentCard(
      {super.key, this.title, this.content, this.elevation, this.header});

  final Widget? title, content, header;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    Widget child = Card(
      elevation: elevation,
      margin: EdgeInsets.all(AppPadding.appBorder / 2),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppPadding.quadPadding,
          horizontal: AppPadding.quadPadding,
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
            if (title != null && content != null) AppPadding.triplePadding.ph,
            DefaultTextStyle(
              style: Theme.of(context).textTheme.bodyLarge!,
              child: SizedBox(
                width: double.infinity,
                child: content,
              ),
            ),
          ],
        ),
      ),
    );

    if (header == null) {
      return child;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (header != null)
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppPadding.appBorder / 2 + AppPadding.doublePadding,
            ).copyWith(top: AppPadding.appBorder / 2),
            child: DefaultTextStyle(
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontWeight: FontWeight.bold,
                  ),
              child: header!,
            ),
          ),
        child
      ],
    );
  }
}
