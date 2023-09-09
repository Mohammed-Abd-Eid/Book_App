import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/home/view/widget/list_items.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: ListItems(),
      ),
    );
  }
}
