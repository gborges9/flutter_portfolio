import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/infrastructure/common/value_range.dart';
import 'package:gbx_core/gbx_core.dart';

class CustomPageView extends StatefulWidget {
  final CustomPageController? controller;
  final List<Widget> children;
  final void Function(int page)? onPageChanged;

  const CustomPageView({
    super.key,
    this.controller,
    required this.children,
    this.onPageChanged,
  });

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  late List<GlobalKey> _childrenKeys;
  late List<Widget> children;
  late CustomPageController controller;

  late List<double> heights;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _childrenKeys = widget.children.map((e) => GlobalKey()).toList();
    children = List.generate(
      widget.children.length,
      (index) => SizedBox(
        key: _childrenKeys[index],
        child: widget.children[index],
      ),
    );
    controller = widget.controller ?? CustomPageController();
    heights = List.filled(children.length, 0);
  }

  @override
  void dispose() {
    super.dispose();
    if (widget.controller == null) {
      controller.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      heights = getHeights();
      widget.controller?.setPageHeights(heights);
    });

    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        onScroll(notification);
        return false;
      },
      child: SingleChildScrollView(
        controller: widget.controller,
        child: Column(
          children: children,
        ),
      ),
    );
  }

  List<double> getHeights() {
    return _childrenKeys
        .map((e) => e.currentContext?.size?.height ?? 0)
        .toList();
  }

  void onScroll(ScrollNotification notification) {
    int controllerPage = controller.page.toInt();
    if (controllerPage != currentPage) {
      currentPage = controllerPage;
      widget.onPageChanged?.call(controllerPage.toInt());
    }
  }
}

class CustomPageController extends ScrollController implements PageController {
  late List<double> heights;
  double maxHeight = 0;
  double _page = 0;

  List<ValueRange<double>> ranges = [];

  CustomPageController() {
    addListener(_onScrollEvent);
  }

  @override
  Future<void> animateToPage(int page,
          {required Duration duration, required Curve curve}) =>
      animateTo(getScrollHeightToPage(page), duration: duration, curve: curve);

  @override
  int get initialPage => 0;

  @override
  void jumpToPage(int page) => jumpTo(getScrollHeightToPage(page));

  @override
  bool get keepPage => false;

  @override
  Future<void> nextPage({required Duration duration, required Curve curve}) =>
      animateToPage((page + 1).toInt(), duration: duration, curve: curve);

  @override
  double get page => _page;

  @override
  Future<void> previousPage(
          {required Duration duration, required Curve curve}) =>
      animateToPage((page - 1).toInt(), duration: duration, curve: curve);

  @override
  double get viewportFraction => 0;

  void setPageHeights(List<double> heights) {
    this.heights = heights;
    ranges = generateRanges();
    maxHeight = heights.reduce((value, element) => value + element);
  }

  double getScrollHeightToPage(int page) {
    if (page == 0) return 0;
    double h = heights
        .sublist(0, page.floor())
        .reduce((value, element) => value + element);

    // Avoid overscrolling
    if (h + position.viewportDimension > maxHeight) {
      return maxHeight - position.viewportDimension;
    }
    return h;
  }

  void _onScrollEvent() {
    double pixelScrolled = position.pixels;
    if (pixelScrolled <= 0) {
      _page = 0;
      return;
    }

    if (ranges[page.toInt()].fitsInRange(pixelScrolled)) {
      return;
    }
    while (!ranges[_page.toInt()].fitsInRange(pixelScrolled)) {
      _page += ranges[_page.toInt()].compareToRange(pixelScrolled);
    }
  }

  List<ValueRange<double>> generateRanges() {
    if (heights.isEmpty) {
      return [];
    }

    double modifier = -position.viewportDimension * 0.4;

    List<ValueRange<double>> ranges = [
      ValueRange(0, heights[0] + modifier),
    ];

    for (int i = 1; i < heights.length; i++) {
      double min = ranges.last.max;
      double max = min + heights[i];

      ranges.add(ValueRange(min, max));
    }

    return ranges;
  }
}
