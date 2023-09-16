import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/style.dart';
import 'package:flutter_application_1/feature/details/view/widget/custom_appBar_book.dart';
import 'package:flutter_application_1/feature/details/view/widget/custom_button.dart';
import 'package:flutter_application_1/feature/details/view/widget/details.dart';
import 'package:flutter_application_1/feature/details/view/widget/smiler_list.dart';
import 'package:flutter_application_1/feature/details/view/widget/title_details.dart';
import 'package:flutter_application_1/feature/home/models/book_models/book_models.dart';

class HomeDetails extends StatelessWidget {
  const HomeDetails({super.key, required this.books});

  final BookModels books;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(slivers: [
      SliverFillRemaining(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.27),
                child: Details(books: books),
              ),
              TitleDetails(books: books),
              const SizedBox(height: 35),
              CustomButtom(books: books),
              const Expanded(child: SizedBox(height: 50)),
              Text(
                "You can also like",
                style: Style.textStyle14.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 16),
              const SilmelarListView(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    ]);
  }
}
