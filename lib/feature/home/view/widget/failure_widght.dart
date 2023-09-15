import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/style.dart';

class ErrorsWidget extends StatelessWidget {
  const ErrorsWidget({super.key, required this.errorMessage});

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        style: Style.textStyle18,
      ),
    );
  }
}
