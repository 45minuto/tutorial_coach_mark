import 'package:flutter/widgets.dart';

class CustomTargetContentPosition {
  CustomTargetContentPosition({
    this.top,
    this.left,
    this.bottom,
  });
  final double top, left, bottom;
  @override
  String toString() {
    return 'CustomTargetPosition{top: $top, left: $left, bottom: $bottom}';
  }
}

enum AlignContent { top, bottom, left, right, custom }

class ContentTarget {
  ContentTarget({
    this.align = AlignContent.bottom,
    this.child,
    this.customPosition,
  }) : assert(child != null && !(align == AlignContent.custom && customPosition == null));

  final AlignContent align;
  final CustomTargetContentPosition customPosition;
  final Widget child;
  @override
  String toString() {
    return 'ContentTarget{align: $align, child: $child}';
  }
}
