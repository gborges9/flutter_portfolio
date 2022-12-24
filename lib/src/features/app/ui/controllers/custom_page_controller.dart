import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/infrastructure/common/value_range.dart';

class CustomPageController extends ScrollController implements PageController {
  late List<double> heights;
  double maxHeight = 0;
  double _page = 0;

  List<ValueRange<double>> ranges = [];

  final pageListeners = <void Function(double page)>[];

  CustomPageController() {
    addListener(_calculateCurrentPage);
  }

  @override
  Future<void> animateToPage(int page,
          {required Duration duration, required Curve curve}) =>
      animateTo(_getScrollHeightToPage(page), duration: duration, curve: curve);

  @override
  int get initialPage => 0;

  @override
  void jumpToPage(int page) => jumpTo(_getScrollHeightToPage(page));

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
    ranges = _generateRanges();
    maxHeight = heights.reduce((value, element) => value + element);
    _calculateCurrentPage();
  }

  double _getScrollHeightToPage(int page) {
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

  void _calculateCurrentPage() {
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

    notifyPageListeners();
  }

  List<ValueRange<double>> _generateRanges() {
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

  void addPageListener(void Function(double page) callback) {
    pageListeners.add(callback);
  }

  void removePageListener(void Function(double page) callback) {
    pageListeners.remove(callback);
  }

  void notifyPageListeners() {
    for (var listener in pageListeners) {
      listener.call(_page);
    }
  }
}
