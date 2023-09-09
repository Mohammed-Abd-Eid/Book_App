import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/home/view/widget/list_body.dart';

class FeatureBooksList extends StatelessWidget {
  const FeatureBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.27,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomListView(),
          );
        },
      ),
    );
  }
}
