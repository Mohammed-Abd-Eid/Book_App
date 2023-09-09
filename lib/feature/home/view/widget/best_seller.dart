import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/home/view/widget/list_items.dart';

class BestSellerlist extends StatelessWidget {
  const BestSellerlist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: ListItems(),
      ),
    );
  }
}
