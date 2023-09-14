import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/home/maneger/feature/featured_books_cubit.dart';
import 'package:flutter_application_1/feature/home/maneger/feature/featured_books_state.dart';
import 'package:flutter_application_1/feature/home/view/widget/list_body.dart';
import 'package:flutter_application_1/feature/home/view/widget/loading.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksList extends StatelessWidget {
  const FeatureBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length - 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomListView(
                      imgUrl:
                          state.books[index].volumeInfo.imageLinks!.thumbnail!),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return ErrorWidget(state.errorMessage);
        } else {
          return const LoadingInd();
        }
      },
    );
  }
}
