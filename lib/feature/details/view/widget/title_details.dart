import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TitleDetails extends StatelessWidget {
  const TitleDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "The Jungle Book",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Style.textStyle30,
        ),
        const SizedBox(height: 4),
        Text(
          "Rudyard Kipling",
          style: Style.textStyle18.copyWith(
            color: Colors.white30,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(height: 14),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(FontAwesomeIcons.solidStar,
                color: Color(0xFFffDD4F), size: 13.3),
            const SizedBox(width: 6.3),
            const Text("4.8", style: Style.textStyle16),
            const SizedBox(width: 9),
            Text(
              "(2390)",
              style: Style.textStyle14.copyWith(color: Colors.white30),
            ),
          ],
        )
      ],
    );
  }
}
