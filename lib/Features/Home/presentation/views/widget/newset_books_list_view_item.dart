import 'package:bookly/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/Home/presentation/views/widget/booking_rating.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:go_router/go_router.dart';

class NewsetBookListViewItem extends StatelessWidget {
  const NewsetBookListViewItem({
    super.key,
    required this.bookmodel,
  });
  final BookModel bookmodel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kDetailpage);
      },
      child: SizedBox(
        height: 100,
        child: Row(
          children: [
            AspectRatio(
                aspectRatio: 2.5 / 4,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: CachedNetworkImage(
                        imageUrl: bookmodel.volumeInfo.imageLinks!.thumbnail,
                        fit: BoxFit.fill,
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                        height: 50,
                        width: 30,
                      ),
                    ),
                  ),
                )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      bookmodel.volumeInfo.title!,
                      style: Styles.textStyle20,
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text("The Writer Name",
                        style: Styles.textStyle14
                            .copyWith(fontWeight: FontWeight.w200)),
                    const SizedBox(
                      height: 3,
                    ),
                    const Row(
                      children: [
                        Text(
                          "PRice \$",
                          style: Styles.textStyle20,
                        ),
                        Spacer(),
                        BookingRate(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
