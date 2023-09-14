import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/home/view/widget/list_body.dart';

class SilmelarListView extends StatelessWidget {
  const SilmelarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.13,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomListView(imgUrl: "assets/images/test_image.png"),
          );
        },
      ),
    );
  }
}
