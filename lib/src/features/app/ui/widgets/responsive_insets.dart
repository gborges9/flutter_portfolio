import 'package:flutter/material.dart';

class ResponsiveInsets extends InheritedWidget {
  final EdgeInsets value;

  const ResponsiveInsets({
    super.key,
    required this.value,
    required super.child,
  });

  static ResponsiveInsets? of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<ResponsiveInsets>());
  }

  static EdgeInsets insetsOf(BuildContext context) {
    return of(context)?.value ?? EdgeInsets.zero;
  }

  @override
  bool updateShouldNotify(ResponsiveInsets oldWidget) {
    //return true;
    return oldWidget.value != value;
  }
}
