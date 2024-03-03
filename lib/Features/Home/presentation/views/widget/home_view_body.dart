import 'package:bookly/Features/Home/presentation/views/widget/custom_appbar.dart';
import 'package:bookly/Features/Home/presentation/views/widget/feature_list_viwe_build.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 30),
          Text(
            "Best Seller",
            style: Styles.titlemeduim,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

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
          const Column(
            children: [
              Text("title "),
              Text("The Writer Name"),
              Row(
                children: [
                  Text("PRice \$"),
                  Icon(Icons.star, color: Colors.yellow),
                  Text("(2300)")
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
