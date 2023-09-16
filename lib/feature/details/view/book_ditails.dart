import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/details/manger/similar_books_cubit.dart';
import 'package:flutter_application_1/feature/details/view/widget/home_details.dart';
import 'package:flutter_application_1/feature/home/models/book_models/book_models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModels});

  final BookModels bookModels;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category: widget.bookModels.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeDetails(books: widget.bookModels),
    );
  }
}
