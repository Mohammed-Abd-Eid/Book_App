import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class ListItems extends StatelessWidget {
  const ListItems({super.key});

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
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/test_image.png"),
                    fit: BoxFit.fill,
                  ),
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
                      child: const Text(
                        "Harry Potter and the Goblet of Fire",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Style.textStyle20,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      "J.K.Rowling",
                      style: Style.textStyle14.copyWith(color: Colors.white30),
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        Text(
                          "19.99 \$",
                          style: Style.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            const Icon(FontAwesomeIcons.solidStar,
                                color: Color(0xFFffDD4F), size: 13.3),
                            const SizedBox(width: 6.3),
                            const Text("4.8", style: Style.textStyle16),
                            const SizedBox(width: 6.3),
                            Text(
                              "(2390)",
                              style: Style.textStyle14
                                  .copyWith(color: Colors.white30),
                            ),
                          ],
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
