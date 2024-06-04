import 'package:emart/consts/consts.dart';
import 'package:emart/views/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'E Mart',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.red,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: whiteColor,
          ),
          backgroundColor: Colors.transparent,
        ),
        fontFamily: regular,

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const splash_screen(),
    );
  }
}
