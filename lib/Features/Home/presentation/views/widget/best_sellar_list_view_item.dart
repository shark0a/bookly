import 'package:bookly/Features/Home/presentation/views/widget/booking_rating.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: Image.asset(
                  AssetsData.test,
                  height: 50,
                  width: 30,
                ),
              )),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  "Harry poter and the goblet  ",
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 3,
                ),
                Text("The Writer Name",
                    style: Styles.textStyle14
                        .copyWith(fontWeight: FontWeight.w200)),
                const SizedBox(
                  height: 3,
                ),
                const Row(
                  children: [
                    Text(
                      "PRice \$",
                      style: Styles.textStyle20,
                    ),
                    Spacer(),
                    BookingRate(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
