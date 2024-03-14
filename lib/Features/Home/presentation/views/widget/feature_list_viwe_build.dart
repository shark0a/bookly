import 'package:bookly/Features/Home/presentation/manger/feature_books_cuibts/feature_books_cubit.dart';
import 'package:bookly/Features/Home/presentation/views/widget/custom_list_view.dart';
import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widget/custom_loading_indicator.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
        builder: (context, state) {
      if (state is FeatureBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
            itemCount: state.books.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CustomBooksListViwe(
                  urlimag: state.books[index].volumeInfo.imageLinks!.thumbnail,
                ),
              );
            },
          ),
        );
      } else if (state is FeatureBooksFailure) {
        return CustomErrorWidget(errmessage: state.errmesage);
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
