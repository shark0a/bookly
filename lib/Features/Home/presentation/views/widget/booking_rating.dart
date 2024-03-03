import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookingRate extends StatelessWidget {
  const BookingRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.yellow),
        const SizedBox(
          height: 6.3,
        ),
        const Text(
          "4.8  ",
          style: Styles.textStyle16,
        ),
        const SizedBox(
          height: 6.3,
        ),
        Text(
          "(2300)",
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w200),
        ),
      ],
    );
  }
}
