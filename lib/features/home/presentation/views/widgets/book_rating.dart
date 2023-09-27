
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:livree/core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(color: Colors.yellow, FontAwesomeIcons.solidStar),
        SizedBox(
          width: 6.3,
        ),
        Text(
          '4.6',
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: 5,
        ),
        Text('243', style: Styles.textStyle14),
      ],
    );
  }
}
