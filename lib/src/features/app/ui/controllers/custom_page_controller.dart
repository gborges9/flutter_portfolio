import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/infrastructure/common/value_range.dart';

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
