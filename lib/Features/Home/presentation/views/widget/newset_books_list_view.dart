import 'package:bookly/Features/Home/presentation/manger/newset_books_cubits/newset_books_cubit.dart';
import 'package:bookly/Features/Home/presentation/views/widget/newset_books_list_view_item.dart';
import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/core/widget/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsetBooksListViwe extends StatelessWidget {
  const NewsetBooksListViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
        builder: (context, state) {
      if (state is NewsetBooksSuccess) {
        return Expanded(
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return NewsetBookListViewItem(
                bookmodel: state.books[index],
              );
            },
          ),
        );
      } else if (state is NewsetBooksFaliure) {
        return CustomErrorWidget(errmessage: state.errmesage);
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
