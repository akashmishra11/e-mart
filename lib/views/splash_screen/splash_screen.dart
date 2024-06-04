import 'package:emart/consts/colors.dart';
import 'package:emart/consts/consts.dart';
import 'package:emart/views/auth_screen/login_screen.dart';
import 'package:emart/widgets_common/applogo_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {

  changeScreen(){
    Future.delayed(Duration(seconds: 3),(){
      Get.to(() => LoginScreen());
    });

  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(icSplashBg,width: 300,)),
              20.heightBox,
              applogoWidget(),
              10.heightBox,
              appname.text.white.fontFamily(bold).size(22).make(),
              5.heightBox,
              appversion.text.white.size(16).make(),
              Spacer(),
              credits.text.white.fontFamily(bold).make(),
              30.heightBox


            ],
          )),
    );
  }
}
