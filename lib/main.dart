import 'package:bookly/constant.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kprimaryColor,
        // textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      // : const SplashView(),
    );
  }
}
