import 'package:flutter/material.dart';
import 'package:utilities/utils/extensions/text_extension.dart';

typedef KeyboardTapCallback = void Function(String text);

class NumericKeyboard extends StatefulWidget {
  const NumericKeyboard({
    required this.onKeyboardTap,
    this.textColor = Colors.black,
    this.rightButtonFn,
    this.rightIcon,
    this.leftButtonFn,
    this.leftIcon,
    this.faNumber = false,
    this.mainAxisAlignment = MainAxisAlignment.spaceEvenly,
    final Key? key,
  }) : super(key: key);

  /// Color of the text [default = Colors.black]
  final Color textColor;

  final bool faNumber;

  /// Display a custom right icon
  final Widget? rightIcon;

  /// Action to trigger when right button is pressed
  final Function()? rightButtonFn;

  /// Display a custom left icon
  final Icon? leftIcon;

  /// Action to trigger when left button is pressed
  final Function()? leftButtonFn;

  /// Callback when an item is pressed
  final KeyboardTapCallback onKeyboardTap;

  /// Main axis alignment [default = MainAxisAlignment.spaceEvenly]
  final MainAxisAlignment mainAxisAlignment;

  @override
  State<StatefulWidget> createState() => _NumericKeyboardState();
}

class _NumericKeyboardState extends State<NumericKeyboard> {
  @override
  Widget build(final BuildContext context) => Directionality(
    textDirection: TextDirection.ltr,
    child: Container(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          ButtonBar(
            alignment: widget.mainAxisAlignment,
            children: <Widget>[
              _calcButton(widget.faNumber ? '۱' : "1"),
              _calcButton(widget.faNumber ? '۲' : "2"),
              _calcButton(widget.faNumber ? '۳' : "3"),
            ],
          ),
          ButtonBar(
            alignment: widget.mainAxisAlignment,
            children: <Widget>[
              _calcButton(widget.faNumber ? '۴' : "4"),
              _calcButton(widget.faNumber ? '۵' : "5"),
              _calcButton(widget.faNumber ? '۶' : "6"),
            ],
          ),
          ButtonBar(
            alignment: widget.mainAxisAlignment,
            children: <Widget>[
              _calcButton(widget.faNumber ? '۷' : "7"),
              _calcButton(widget.faNumber ? '۸' : "8"),
              _calcButton(widget.faNumber ? '۹' : "9"),
            ],
          ),
          ButtonBar(
            alignment: widget.mainAxisAlignment,
            children: <Widget>[
              InkWell(
                borderRadius: BorderRadius.circular(45),
                onTap: widget.leftButtonFn,
                child: Container(alignment: Alignment.center, width: 50, height: 50, child: widget.leftIcon),
              ),
              _calcButton('0'),
              InkWell(
                borderRadius: BorderRadius.circular(45),
                onTap: widget.rightButtonFn,
                child: Container(alignment: Alignment.center, width: 50, height: 50, child: widget.rightIcon,),
              ),
            ],
          ),
        ],
      ),
    ),
  );

  Widget _calcButton(final String value) => InkWell(
    borderRadius: BorderRadius.circular(45),
    onTap: () => widget.onKeyboardTap(value),
    child: Container(
      alignment: Alignment.center,
      width: 50,
      height: 50,
      child: Text(value).headline3(),
    ),
  );
}
