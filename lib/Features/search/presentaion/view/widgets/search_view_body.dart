import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_search_text_filed.dart';
import 'search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomSearchTextFiled(),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Text(
                "Search Reshult",
                style: Styles.textStyle18,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          SearchResultListView(),
        ],
      ),
    );
  }
}
