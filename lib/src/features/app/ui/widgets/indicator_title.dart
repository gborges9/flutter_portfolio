import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/app/theme/color.dart';
import 'package:flutter_portfolio/src/features/app/theme/margins.dart';
import 'package:gbx_core/gbx_core.dart';

class IndicatorTitle extends StatelessWidget {
  const IndicatorTitle({
    super.key,
    required this.title,
    this.indicatorHeight,
    this.indicatorColor,
  });

  final Widget title;
  final double? indicatorHeight;
  final Color? indicatorColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: AppMargins.padding,
          height: indicatorHeight ??
              Theme.of(context).textTheme.headlineMedium!.fontSize,
          color: indicatorColor ?? AppColors.primary,
        ),
        AppMargins.doublePadding.pw,
        DefaultTextStyle(
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: AppColors.black),
          child: Expanded(child: title),
        ),
      ],
    );
  }
}
