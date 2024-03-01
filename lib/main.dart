import 'package:bookly/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Features/splash/presentaion/views/splash_view.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kprimaryColor),
      home: const SplashView(),
    );
  }
}
