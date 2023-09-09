import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/style.dart';
import 'package:flutter_application_1/feature/search/view/widget/form_filed.dart';
import 'package:flutter_application_1/feature/search/view/widget/result_list.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchFiled(),
          SizedBox(height: 16),
          Text("Search Result", style: Style.textStyle18),
          Expanded(child: SearchResultList()),
        ],
      ),
    );
  }
}
