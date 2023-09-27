import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:livree/constants.dart';
import 'package:livree/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const LivreeApp());
}

class LivreeApp extends StatelessWidget {
  const LivreeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // todo theme color and constant 
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor
      ),
      debugShowCheckedModeBanner: false,
      home: const  SplashView()
    );
  }
}
