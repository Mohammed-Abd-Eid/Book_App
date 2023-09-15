import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/style.dart';
import 'package:flutter_application_1/feature/home/models/book_models/book_models.dart';
import 'package:flutter_application_1/feature/home/view/widget/book_rating.dart';
import 'package:go_router/go_router.dart';

class ListItems extends StatelessWidget {
  const ListItems({super.key, required this.bookModels});

  final BookModels bookModels;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push("/detailsBook");
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: AspectRatio(
                aspectRatio: 2.5 / 4,
                child: CachedNetworkImage(
                  imageUrl: bookModels.volumeInfo.imageLinks?.thumbnail ??
                      "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.boldstrokesbooks.com%2Fbooks%2Fgay-non-fiction-14-c&psig=AOvVaw06Zftxc3RAArzp5JprYF3-&ust=1694851473870000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCPD6r_KTrIEDFQAAAAAdAAAAABAE",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        bookModels.volumeInfo.title!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Style.textStyle20,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      // ignore: dead_null_aware_expression
                      bookModels.volumeInfo.authors?[0] ?? "??? ",

                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Style.textStyle14.copyWith(color: Colors.white30),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Text(
                          "Free",
                          style: Style.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        BookRating(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: dead_null_aware_expression
                          rating: bookModels.volumeInfo.averageRating ?? 0,
                          // ignore: dead_null_aware_expression
                          count: bookModels.volumeInfo.ratingsCount ?? 0,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
