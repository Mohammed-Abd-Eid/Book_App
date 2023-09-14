import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/style.dart';

class ErrorWidget extends StatelessWidget {
  const ErrorWidget({super.key, required this.errorMessage});

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Text(
      errorMessage,
      style: Style.textStyle18,
    );
  }
}
