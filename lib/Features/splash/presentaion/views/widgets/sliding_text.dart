import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidanimation,
  });

  final Animation<Offset> slidanimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidanimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidanimation,
            child: const Text(
              "Read Free Books",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, letterSpacing: 3),
            ),
            
          );
        });
  }
}
