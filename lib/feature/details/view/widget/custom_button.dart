// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/launch_url.dart';
import 'package:flutter_application_1/core/widget/button.dart';
import 'package:flutter_application_1/feature/home/models/book_models/book_models.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.books});

  final BookModels books;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ButtonView(
          textColor: Colors.black,
          backgroundColor: Colors.white,
          text: "Free",
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
        ),
        ButtonView(
          onPressed: () async {
            LauncherCustomUrl(context, books.volumeInfo.previewLink!);
          },
          textColor: Colors.white,
          backgroundColor: const Color(0xFFEF8262),
          text: getText(books),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
      ],
    );
  }

  String getText(BookModels books) {
    if (books.volumeInfo.previewLink == null) {
      return "Not Preview";
    } else {
      return "Preview";
    }
  }
}
