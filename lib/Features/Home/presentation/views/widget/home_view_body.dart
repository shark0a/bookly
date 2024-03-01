import 'package:bookly/Features/Home/presentation/views/widget/custom_appbar.dart';
import 'package:bookly/Features/Home/presentation/views/widget/feature_list_viwe_build.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomAppBar(),
        FeaturedBooksListView(),
      ],
    );
  }
}

