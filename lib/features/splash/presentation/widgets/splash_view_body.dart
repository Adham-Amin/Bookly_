import 'package:bookly/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animatedController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    slidingText();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AppAssets.logo),
        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (context, child) => SlideTransition(
            position: slidingAnimation,
            child: Text(
              'Read Free Books',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }

  void slidingText() {
    animatedController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 3),
      end: Offset.zero,
    ).animate(animatedController);
    animatedController.forward();
  }
}
