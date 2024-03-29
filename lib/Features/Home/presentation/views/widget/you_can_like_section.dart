import 'package:bookly/Features/Home/presentation/manger/similer_books_cubits/similers_books_cubit.dart';
import 'package:bookly/Features/Home/presentation/views/widget/custom_book_image.dart';
import 'package:bookly/core/utils/app_router.dart';
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
                    height: 150,
                    child: AspectRatio(
                      aspectRatio: 3 / 1,
                      child: ListView.builder(
                          itemCount: state.books.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return InkWell(
                                onTap: () {
                                  GoRouter.of(context).push(
                                      AppRouter.kDetailpage,
                                      extra: state.books[index]);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: CustomBookImage(
                                      urlimag: state.books[index].volumeInfo
                                              .imageLinks?.thumbnail ??
                                          ''),
                                ));
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
