import 'package:bookly/Features/Home/presentation/views/widget/newset_books_list_view.dart';
import 'package:bookly/Features/Home/presentation/views/widget/custom_appbar.dart';
import 'package:bookly/Features/Home/presentation/views/widget/feature_list_viwe_build.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeaturedBooksListView(),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Newset Books",
                    style: Styles.titlemeduim,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: NewsetBooksListViwe(),
        ),
      ],
    );
  }
}
