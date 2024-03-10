import 'package:bookly/Features/Home/presentation/views/widget/best_sellar_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 30,
            itemBuilder: (context, index) {
              return const BookListViewItem();
            }));
  }
}
