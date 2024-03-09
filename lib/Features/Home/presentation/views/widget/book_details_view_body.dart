import 'package:flutter/material.dart';

import 'details_app_bar.dart';
import 'information_of_book_section.dart';
import 'you_can_like_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DetailsAppBar(),
        InformationOfBookSection(),
        YouCanLikeSection(),
      ],
    );
  }
}
