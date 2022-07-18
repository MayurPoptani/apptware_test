import 'package:apptware_test/constants/app_colors.dart';
import 'package:apptware_test/db/db.dart';
import 'package:apptware_test/functions/fcm.dart';
import 'package:apptware_test/repositories/recipe_repo.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splash_screen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); 
  registerRepos();
  Get.find<FCM>().init();
  runApp(const MyApp());
}

void registerRepos() {
  Get.put(const RecipeRepo());
  Get.put(FCM());
  Get.put(AppDatabase());
}

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const SplashScreen(),
      theme: appTheme(),
    );
  }

  ThemeData appTheme() {
    return ThemeData(
      fontFamily: "Poppins",
      scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
      
    );
  }
}