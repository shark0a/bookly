import 'package:bookly/Features/Home/presentation/manger/feature_books_cuibts/feature_books_cubit.dart';
import 'package:bookly/Features/Home/presentation/manger/newset_books_cubits/newset_books_cubit.dart';
import 'package:bookly/Features/Home/repos/home_repo_implement.dart';
import 'package:bookly/constant.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/srevice_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServiceLocator();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                FeatureBooksCubit(getIt.get<HomeRepoImplement>())),
        BlocProvider(
            create: (context) =>
                NewsetBooksCubit(getIt.get<HomeRepoImplement>()))
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kprimaryColor,
          // textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
