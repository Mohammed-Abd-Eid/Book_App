import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/style.dart';
import 'package:flutter_application_1/feature/home/models/book_models/book_models.dart';
import 'package:flutter_application_1/feature/home/view/widget/book_rating.dart';

class TitleDetails extends StatelessWidget {
  const TitleDetails({super.key, required this.books});

  final BookModels books;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          books.volumeInfo.title ?? "Book ???",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Style.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 4),
        Text(
          books.volumeInfo.authors?[0] ?? "Book ???",
          style: Style.textStyle18.copyWith(
            color: Colors.white30,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(height: 14),
        BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
            rating: books.volumeInfo.averageRating ?? 0,
            count: books.volumeInfo.ratingsCount ?? 0)
      ],
    );
  }
}
