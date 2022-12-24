import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/app/ui/controllers/custom_page_controller.dart';

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
    controller.addPageListener(onPageChanged);
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

    return SingleChildScrollView(
      controller: widget.controller,
      child: Column(
        children: children,
      ),
    );
  }

  List<double> getHeights() {
    return _childrenKeys
        .map((e) => e.currentContext?.size?.height ?? 0)
        .toList();
  }

  void onPageChanged(double page) {
    widget.onPageChanged?.call(page.toInt());
  }
}
