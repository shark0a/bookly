import 'package:bookly/Features/splash/presentaion/Home/presentation/views/home_view.dart';
import 'package:bookly/Features/splash/presentaion/views/widgets/sliding_text.dart';
import 'package:bookly/constant.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinganimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimations();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedBuilder(
            animation: slidinganimation,
            builder: (context, _) {
              return SlideTransition(
                position: slidinganimation,
                child: Image.asset(
                  AssetsData.logo,
                  height: 100,
                ),
              );
            }),
        SlidingText(slidanimation: slidinganimation),
      ],
    );
  }

  void initSlidingAnimations() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidinganimation =
        Tween<Offset>(begin: const Offset(0, 8), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const HomeView(),
          transition: Transition.fade, duration: kTranstionDuration);
    });
  }
}
