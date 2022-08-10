import 'package:flutter/material.dart';

extension WidgetsExtension on Widget {
  Widget withTooltip(
    final String message, {
    final Decoration? decoration,
    final double? height,
    final bool? preferBelow,
    final EdgeInsetsGeometry? padding,
    final TextStyle? textStyle,
    final Duration? waitDuration,
    final EdgeInsetsGeometry? margin,
  }) =>
      Tooltip(
        message: message,
        decoration: decoration,
        height: height,
        padding: padding,
        preferBelow: preferBelow,
        textStyle: textStyle,
        waitDuration: waitDuration,
        margin: margin,
        child: this,
      );

  Widget fit({Alignment? alignment}) => FittedBox(
        key: key,
        child: this,
        fit: BoxFit.scaleDown,
        alignment: alignment ?? Alignment.center,
      );

  Widget expanded({final int flex = 1}) => Expanded(flex: flex, child: this);

  Widget onTap(final GestureTapCallback? onPressed) => GestureDetector(
        onTap: onPressed,
        child: this,
      );

  Widget ltr() => Directionality(textDirection: TextDirection.ltr, child: this);

  Widget rtl() => Directionality(textDirection: TextDirection.rtl, child: this);
}
