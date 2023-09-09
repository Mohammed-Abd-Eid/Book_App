import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widget/button.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ButtonVeiw(
          textColor: Colors.black,
          backgroundColor: Colors.white,
          text: "19.9\$",
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
        ),
        ButtonVeiw(
          textColor: Colors.white,
          backgroundColor: Color(0xFFEF8262),
          text: "Free preview",
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
      ],
    );
  }
}
