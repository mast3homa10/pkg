import 'package:flutter/material.dart';

import '../utilities.dart';

Widget button({
  final VoidCallback? onTap,
  final String title = "",
  final EdgeInsets margin = EdgeInsets.zero,
  final Widget trailing = const SizedBox(),
  final Widget leading = const SizedBox(),
  final double width = 150,
  final double height = 50,
  final Widget? titleWidget,
  final Color? backgroundColor,
  final double? borderRadius = 10,
  final TextStyle? textStyle,
  final bool maxWidth = false,
}) =>
    Container(
      width: maxWidth ? screenWidth : width,
      height: height,
      padding: margin,
      child: ElevatedButton(
        onPressed: onTap,
        child: row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            leading,
            titleWidget ??
                Text(
                  title,
                  style: textStyle?.copyWith(color: Colors.black) ?? context.textTheme.headline6!.copyWith(color: Colors.black),
                ),
            trailing,
          ],
        ),
      ),
    );

Widget borderButton({
  final Function()? onTap,
  final String title = "",
  final double? borderWidth,
  final Color? borderColor,
  final TextStyle? textStyle,
}) =>
    OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        splashFactory: NoSplash.splashFactory,
        primary: context.theme.backgroundColor,
        side: BorderSide(
          width: borderWidth ?? 1,
          color: borderColor ?? context.theme.dividerColor,
        ),
      ),
      child: Text(title, style: textStyle ?? context.textTheme.bodyText1),
    );

Widget textButton({
  final VoidCallback? onTap,
  final String title = "",
  final TextStyle? textStyle,
}) =>
    TextButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        splashFactory: NoSplash.splashFactory,
        primary: context.theme.backgroundColor,
      ),
      child: Text(
        title,
        style: textStyle ??
            context.textTheme.bodyText1?.copyWith(
              color: context.theme.primaryColor,
              decoration: TextDecoration.underline,
              decorationThickness: 3,
            ),
      ),
    );

Widget button2({required final String title, required final VoidCallback onTap}) => Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: screenWidth,
      height: 56,
      decoration: BoxDecoration(color: Colors.white10, borderRadius: BorderRadius.circular(8)),
      child: iconTextHorizontal(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        leading: Text(title),
        trailing: Icon(Icons.keyboard_arrow_left, color: context.theme.disabledColor),
      ),
    ).onTap(onTap);
