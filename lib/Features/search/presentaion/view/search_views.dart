import 'package:flutter/material.dart';

import 'widgets/search_view_body.dart';

class SearchViwe extends StatelessWidget {
  const SearchViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SearchViewBody(),
      ),
    );
  }
}
