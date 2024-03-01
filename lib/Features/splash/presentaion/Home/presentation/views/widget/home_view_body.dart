import 'package:bookly/Features/splash/presentaion/Home/presentation/views/widget/custom_appbar.dart';
import 'package:bookly/Features/splash/presentaion/Home/presentation/views/widget/custom_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
       const CustomAppBar(),
       const CustomListViwe(),
      ],
    );
  }
}
