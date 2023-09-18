import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/style.dart';
import 'package:flutter_application_1/feature/home/view/widget/failure_widght.dart';
import 'package:flutter_application_1/feature/search/view/widget/form_filed.dart';
import 'package:flutter_application_1/feature/search/view/widget/result_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manger/search_cubit.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchFiled(),
          const SizedBox(height: 16),
          const Text("Search Result", style: Style.textStyle18),
          const SizedBox(height: 16),
          Expanded(
            child: BlocBuilder<SearchCubit, SearchState>(
              builder: (context, state) {
                if (state is SearchBooksSuccess) {
                  return const SearchResultList();
                } else if (state is SearchBooksFailure) {
                  return ErrorsWidget(errorMessage: state.errorMessage);
                } else {
                  return const Expanded(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
