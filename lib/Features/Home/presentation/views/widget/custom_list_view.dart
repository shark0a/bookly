import 'package:bookly/core/utils/app_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBooksListViwe extends StatelessWidget {
  const CustomBooksListViwe({
    super.key,
    required this.urlimag,
  });
  final String urlimag;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kDetailpage);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: AspectRatio(
            aspectRatio: 2.6 / 4,
            child: CachedNetworkImage(
              imageUrl: urlimag,
              fit: BoxFit.fill,
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ));
  }
}
