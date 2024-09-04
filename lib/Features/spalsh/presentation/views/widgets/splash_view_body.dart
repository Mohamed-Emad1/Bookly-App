import 'package:booly_app/Features/home/presentation/views/home_view.dart';
import 'package:booly_app/Features/spalsh/presentation/views/widgets/sliding_text.dart';
import 'package:booly_app/constants.dart';
import 'package:booly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class SpalshViewBody extends StatefulWidget {
  const SpalshViewBody({super.key});

  @override
  State<SpalshViewBody> createState() => _SpalshViewBodyState();
}

class _SpalshViewBodyState extends State<SpalshViewBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();

    initSlidindAnimation();

    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(const HomeView(), transition: Transition.fadeIn, duration: kTransition);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidindAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }
}
