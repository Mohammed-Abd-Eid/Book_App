import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/style.dart';

class ButtonView extends StatelessWidget {
  const ButtonView({
    super.key,
    this.borderRadius,
    required this.textColor,
    required this.backgroundColor,
    required this.text,
    this.onPressed,
  });

  final String text;
  final BorderRadius? borderRadius;
  final Color textColor;
  final Color backgroundColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 48,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12),
            ),
          ),
          child: Text(
            text,
            style: Style.textStyle18.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
