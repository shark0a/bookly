import 'package:bookly/Features/Home/presentation/views/widget/custom_appbar.dart';
import 'package:bookly/Features/Home/presentation/views/widget/feature_list_viwe_build.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
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
        ],
      ),
    );
  }
}
