import 'package:adaptive_breakpoints/adaptive_breakpoints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/app/theme/margins.dart';
import 'package:flutter_portfolio/src/features/app/ui/widgets/responsive_insets.dart';

class ResponsiveSection extends StatelessWidget {
  const ResponsiveSection({
    super.key,
    this.backgroundColor,
    required this.child,
    this.margin,
    this.horizontalMarginModifier = 0,
    this.verticalMarginModifier = 0,
  });

  final Color? backgroundColor;
  final Widget child;
  final EdgeInsets? margin;
  final double horizontalMarginModifier;
  final double verticalMarginModifier;

  @override
  Widget build(BuildContext context) {
    final windowType = getWindowType(context);
    bool isSmallScreen = windowType < AdaptiveWindowType.medium;
    final margin = this.margin ??
        (isSmallScreen
            ? EdgeInsets.symmetric(
                horizontal: AppMargins.appBorder + horizontalMarginModifier,
                vertical: AppMargins.appBorder + verticalMarginModifier)
            : EdgeInsets.symmetric(
                horizontal:
                    AppMargins.sectionPadding + horizontalMarginModifier,
                vertical: AppMargins.sectionPadding + verticalMarginModifier));
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.infinity,
        color: backgroundColor,
        padding: ResponsiveInsets.insetsOf(context),
        child: Padding(
          padding: margin,
          child: child,
        ),
      ),
    );
  }
}
