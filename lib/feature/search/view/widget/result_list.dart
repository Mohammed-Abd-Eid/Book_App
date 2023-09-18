import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/home/view/widget/list_items.dart';
import 'package:flutter_application_1/feature/search/manger/search_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../home/view/widget/failure_widght.dart';
import '../../../home/view/widget/loading.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ListItems(
                bookModels: state.books[index],
              ),
            ),
          );
        } else if (state is SearchBooksFailure) {
          return ErrorsWidget(errorMessage: state.errorMessage);
        } else {
          return const LoadingInd();
        }
      },
    );
  }
}
