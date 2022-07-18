
import 'package:apptware_test/constants/app_colors.dart';
import 'package:apptware_test/recipe_list_page/recipe_list_page.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{

  late AnimationController animation;
  late AnimationController fadeInAnimationController;

  @override
  void initState() {
    super.initState();
    animation = AnimationController(vsync: this, duration: 2.seconds);
    fadeInAnimationController = AnimationController(vsync: this, duration: 2.seconds);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      fadeInAnimationController.forward();
      fadeInAnimationController.addStatusListener((status) {
        if(status == AnimationStatus.completed) {
          animation.forward();
          animation.addStatusListener((status) {
            if(status == AnimationStatus.completed) {
              animation.reverse();
            } else if(status == AnimationStatus.dismissed) {
              animation.forward();
            }
          });
        }
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedBuilder(
                animation: fadeInAnimationController,
                builder: (context, _) {
                  return Opacity(
                    opacity: fadeInAnimationController.value,
                    child: AnimatedBuilder(
                      animation: animation,
                      builder: (context, child) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: Tween(begin: 0.0, end: 0.1).evaluate(animation) * context.screenWidth),
                          child: Center(child: Image.asset("assets/images/bowl.png", height: context.screenWidth * .7))
                        );
                      }
                    ).h(context.screenWidth * .8),
                  );
                }
              ),
              16.heightBox,
              // "Cook Like\na Chef".text.size(40).bold.lineHeight(1).make().pSymmetric(h: 24).w(context.screenWidth * .7),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "32k+ premium recipes".text.bodyText1(context).color(AppColors.pinkColor).semiBold.make(),
                  24.heightBox,
                  "Cook Like\na Chef".text.size(40).bold.lineHeight(1).make(),
                  24.heightBox,
                  ElevatedButton(
                    onPressed: () {
                      if(mounted) context.nextReplacementPage(const RecipeListPage());
                    },
                    style: ElevatedButton.styleFrom(
                      // primary: const Color(0xFFC52A2B),
                      primary: AppColors.redColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16)
                    ),
                    child: "Let's Start".text.buttonText(context).white.make(),
                  ).w(double.maxFinite)
                ],
              ).w(context.screenWidth * .6),
            ],
          )
        ),
      ),
    );
  }

  @override
  void dispose() {
    animation.dispose();
    fadeInAnimationController.dispose();
    super.dispose();
  }
}