// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/style.dart';
import 'package:flutter_application_1/feature/home/view/widget/best_seller.dart';
import 'package:flutter_application_1/feature/home/view/widget/custom_appBar.dart';
import 'package:flutter_application_1/feature/home/view/widget/featured_books.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeatureBooksList(),
                SizedBox(height: 50),
                Text("Best Seller", style: Style.textStyle18),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerlist(),
          ),
        ),
      ],
    );
  }
}
