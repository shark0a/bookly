import 'package:bookly/Features/Home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import 'details_app_bar.dart';
import 'information_of_book_section.dart';
import 'you_can_like_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
       const DetailsAppBar(),
         InformationOfBookSection( bookModel: bookModel),
         const YouCanLikeSection(),
      ],
    );
  }
}
