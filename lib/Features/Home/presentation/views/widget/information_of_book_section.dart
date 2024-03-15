import 'package:bookly/Features/Home/presentation/views/widget/booking_rating.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class InformationOfBookSection extends StatelessWidget {
  const InformationOfBookSection({super.key});

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
        child: Image.asset(AssetsData.test),
      ),
      const SizedBox(height: 14),
      Text(
        "The Jungle Book",
        style: Styles.textStyle30.copyWith(fontFamily: "Regular"),
      ),
      Text(
        "Rudyard Kipling",
        style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w200),
      ),
      const SizedBox(
        height: 14,
      ),
      const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BookingRate(count: 4, rate: 222),
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
              "19.99€",
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
