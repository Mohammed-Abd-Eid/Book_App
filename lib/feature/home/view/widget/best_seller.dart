import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/home/maneger/news/news_book_cubit.dart';
import 'package:flutter_application_1/feature/home/view/widget/failure_widght.dart';
import 'package:flutter_application_1/feature/home/view/widget/list_items.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'loading.dart';

class BestSellerlist extends StatelessWidget {
  const BestSellerlist({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBookCubit, NewsBookState>(
      builder: (context, state) {
        if (state is NewsBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ListItems(
                // ignore: dead_null_aware_expression
                bookModels: state.books[index],
              ),
            ),
          );
        } else if (state is NewsBooksFailure) {
          return ErrorsWidget(errorMessage: state.errorMessage);
        } else {
          return const LoadingInd();
        }
      },
    );
  }
}
