import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/utils/style.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    required this.mainAxisAlignment,
    required this.rating,
    required this.count,
  });

  final MainAxisAlignment mainAxisAlignment;
  final double rating;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(FontAwesomeIcons.solidStar,
            color: Color(0xFFffDD4F), size: 13.3),
        const SizedBox(width: 6.3),
        Text("$rating", style: Style.textStyle16),
        const SizedBox(width: 6.3),
        Text(
          "$count",
          style: Style.textStyle14.copyWith(color: Colors.white30),
        ),
      ],
    );
  }
}
