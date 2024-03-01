import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViwe extends StatelessWidget {
  const CustomListViwe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        height: 100,
        width: 50,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          image: DecorationImage(
            image: AssetImage(AssetsData.test),
          ),
        ),
      ),
    );
  }
}
