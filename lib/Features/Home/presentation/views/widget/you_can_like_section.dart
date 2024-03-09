import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
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
          SizedBox(
              height: 180,
              child: AspectRatio(
                aspectRatio: 2 / 1,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          GoRouter.of(context).push(AppRouter.kDetailpage);
                        },
                        child: Container(
                          width: 100,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(1)),
                            image: DecorationImage(
                              image: AssetImage(AssetsData.test),
                            ),
                          ),
                        ),
                      );
                    }),
              ))
        ],
      ),
    );
  }
}
