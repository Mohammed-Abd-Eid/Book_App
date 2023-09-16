import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/home/models/book_models/book_models.dart';

class Details extends StatelessWidget {
  const Details({super.key, required this.books});

  final BookModels books;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.29,
          child: AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: NetworkImage(
                      books.volumeInfo.imageLinks?.thumbnail ?? ""),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
