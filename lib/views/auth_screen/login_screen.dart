import 'package:emart/consts/consts.dart';
import 'package:emart/consts/lists.dart';
import 'package:emart/views/auth_screen/home_screen/home.dart';
import 'package:emart/views/auth_screen/signup_screen.dart';
import 'package:emart/widgets_common/applogo_widget.dart';
import 'package:emart/widgets_common/bg_widgets.dart';
import 'package:emart/widgets_common//custom_textfield.dart';
import 'package:emart/widgets_common/our_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  @override
  Widget build(BuildContext context) {
    return bgWidget(child:Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Center(child: Column(
          children: [
            (context.screenHeight*0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
            10.heightBox,
            Column(
              children: [
                customTextField(title:email,hint:emailHint),
                customTextField(title:password,hint:passwordHint),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child: forgotPass.text.make())),
                5.heightBox,
                ourButton(
                    onPress: (){
                      Get.to(() => const Home());
                    },
                    color:redColor,textColor: whiteColor,title: login).box.rounded.width(context.screenWidth-50).make(),
                10.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                5.heightBox,
                ourButton(
                    onPress: (){
                      Get.to(() => const SignupScreen());
                    },
                    color: Colors.amber[300],textColor: redColor,title: signup,).box.rounded.width(context.screenWidth-50).make(),


                10.heightBox,
                loginWith.text.color(fontGrey).make(),
                5.heightBox,

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                    List.generate(3, (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey[300],
                        child: Image.asset(socialIconList[index],width: 30,),
                      ),
                    ))

                )

              ],
            ).box.white.rounded.padding(EdgeInsets.all(8)).width(context.screenWidth-70).shadowSm.make(),
          ],
        )
        ),
      ),

    )
    );

  }
}
