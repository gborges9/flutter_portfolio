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
    final style = Theme.of(context).textTheme.headlineMedium!;
    return Row(
      children: [
        Container(
          width: AppMargins.padding,
          height: indicatorHeight ?? (style.height! * style.fontSize!),
          color: indicatorColor ?? AppColors.primary,
        ),
        AppMargins.doublePadding.pw,
        DefaultTextStyle(
          style: style.copyWith(color: AppColors.black),
          child: Expanded(child: title),
        ),
      ],
    );
  }
}
