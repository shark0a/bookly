import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextFiled extends StatelessWidget {
  const CustomSearchTextFiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event) =>
          FocusManager.instance.primaryFocus?.unfocus(),
      decoration: InputDecoration(
        
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        hintText: "Search",
        suffixIcon: Icon(
          FontAwesomeIcons.magnifyingGlass,
          size: 20,
        ),
      ),
    );
  }
}
