import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sliderAnmi;
  @override
  void initState() {
    super.initState();
    initSlidingAnimations();
    navidateToHome();
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
        Image.asset("assets/images/Logo.png"),
        const SizedBox(height: 10),
        AnimatedBuilder(
          animation: sliderAnmi,
          builder: (context, _) {
            return SlideTransition(
              position: sliderAnmi,
              child: const Text(
                "Read Free Books",
                textAlign: TextAlign.center,
              ),
            );
          },
        ),
      ],
    );
  }

  void navidateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        /*  Get.to(
          const HomePage(),
          transition: Transition.fade,
          duration: durations,
        );*/
        GoRouter.of(context).push('/homeView');
      },
    );
  }

  void initSlidingAnimations() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    sliderAnmi =
        Tween<Offset>(begin: const Offset(0, 5), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
  }
}
