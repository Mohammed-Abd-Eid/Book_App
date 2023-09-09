import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/style.dart';

class ButtonVeiw extends StatelessWidget {
  const ButtonVeiw({
    super.key,
    this.borderRadius,
    required this.textColor,
    required this.backgroundColor,
    required this.text,
  });
  final String text;
  final BorderRadius? borderRadius;
  final Color textColor;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 48,
        child: TextButton(
          onPressed: () {},
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
