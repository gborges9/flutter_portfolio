import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/app/ui/widgets/responsive_insets.dart';

class ResponsiveSection extends StatelessWidget {
  const ResponsiveSection({
    super.key,
    this.backgroundColor,
    required this.child,
    this.margin = EdgeInsets.zero,
  });

  final Color? backgroundColor;
  final Widget child;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
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
