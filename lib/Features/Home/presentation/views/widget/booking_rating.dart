import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookingRate extends StatelessWidget {
  const BookingRate({
    super.key,
    required this.rate,
    required this.count,
  });
  final int rate;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.yellow),
        const SizedBox(
          height: 6.3,
        ),
        Text(
          rate.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(
          height: 6.3,
        ),
        Text(
          "  ($count)",
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w200),
        ),
      ],
    );
  }
}
