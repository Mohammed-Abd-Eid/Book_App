import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/home/maneger/feature/featured_books_cubit.dart';
import 'package:flutter_application_1/feature/home/maneger/feature/featured_books_state.dart';
import 'package:flutter_application_1/feature/home/view/widget/failure_widght.dart';
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

              //     Error Error
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomListView(
                    // This Line Is Null Error

                    imgUrl: state
                            .books[index].volumeInfo.imageLinks?.thumbnail ??
                        "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.boldstrokesbooks.com%2Fbooks%2Fgay-non-fiction-14-c&psig=AOvVaw06Zftxc3RAArzp5JprYF3-&ust=1694851473870000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCPD6r_KTrIEDFQAAAAAdAAAAABAE",
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return ErrorsWidget(errorMessage: state.errorMessage);
        } else {
          return const LoadingInd();
        }
      },
    );
  }
}
