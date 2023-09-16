import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/details/manger/similar_books_cubit.dart';
import 'package:flutter_application_1/feature/home/view/widget/failure_widght.dart';
import 'package:flutter_application_1/feature/home/view/widget/list_body.dart';
import 'package:flutter_application_1/feature/home/view/widget/loading.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SilmelarListView extends StatelessWidget {
  const SilmelarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
      if (state is SimilarBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.13,
          child: ListView.builder(
            itemCount: state.books.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GestureDetector(
                  onTap: () {
                    GoRouter.of(context)
                        .push("/detailsBook", extra: state.books[index]);
                  },
                  child: CustomListView(
                    imgUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ??
                            "assets/images/Logo.png",
                  ),
                ),
              );
            },
          ),
        );
      } else if (state is SimilarBooksFailure) {
        return ErrorsWidget(errorMessage: state.errorMessage);
      } else {
        return const LoadingInd();
      }
    });
  }
}
