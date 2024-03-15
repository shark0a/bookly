import 'package:bookly/Features/Home/presentation/manger/similer_books_cubits/similers_books_cubit.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/core/widget/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class YouCanLikeSection extends StatelessWidget {
  const YouCanLikeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "You can also like",
                style: Styles.textStyle14
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ],
          ),
          BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
            builder: (context, state) {
              if (state is SimilarBooksSuccess) {
                return SizedBox(
                    height: 180,
                    child: AspectRatio(
                      aspectRatio: 2 / 1,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () { 
                                GoRouter.of(context)
                                    .push(AppRouter.kDetailpage , extra:  state.books[index]) ;   },
                              child: Container(
                                width: 100,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(1)),
                                  image: DecorationImage(
                                    image: AssetImage(AssetsData.test),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ));
              } else if (state is SimilarBooksFaluire) {
                return CustomErrorWidget(errmessage: state.errmessage);
              } else {
                return const CustomLoadingIndicator();
              }
            },
          ),
        ],
      ),
    );
  }
}
