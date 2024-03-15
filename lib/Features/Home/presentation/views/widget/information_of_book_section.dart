import 'package:bookly/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/Home/presentation/views/widget/booking_rating.dart';
import 'package:bookly/Features/Home/presentation/views/widget/custom_book_image.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class InformationOfBookSection extends StatelessWidget {
  const InformationOfBookSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: 192,
        height: 262,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(3),
        ),
        child: CustomBookImage(
            urlimag: bookModel.volumeInfo.imageLinks?.thumbnail ??
                ' error loding image '),
      ),
      const SizedBox(height: 14),
      Text(
        bookModel.volumeInfo.title ?? ' Failures in Loading title',
        style: Styles.textStyle30.copyWith(fontFamily: "Regular"),
      ),
      Text(
        bookModel.volumeInfo.authors?[0] ?? 'error in loding authors',
        style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w200),
      ),
      const SizedBox(
        height: 14,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BookingRate(
              count: bookModel.volumeInfo.ratingsCount ?? 0,
              rate: bookModel.volumeInfo.averageRating ?? 0),
        ],
      ),
      const SizedBox(
        height: 30,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 48,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
            ),
            child: Center(
                child: Text(
              "Free ",
              style: Styles.textStyle16.copyWith(color: Colors.black),
            )),
          ),
          Container(
            width: 150,
            height: 48,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(239, 130, 98, 30),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15)),
            ),
            child: const Center(
              child: Text(
                "Free preview",
                style: Styles.textStyle16,
              ),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 30,
      ),
    ]);
  }
}
