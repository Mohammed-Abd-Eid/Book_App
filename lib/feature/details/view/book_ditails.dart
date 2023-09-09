import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/details/view/widget/home_details.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeDetails(),
    );
  }
}
