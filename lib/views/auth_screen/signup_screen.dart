import 'package:emart/consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:emart/widgets_common/our_button.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../widgets_common/applogo_widget.dart';
import '../../widgets_common/bg_widgets.dart';
import '../../widgets_common/custom_textfield.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  bool?isCheck=false;

  @override
  Widget build(BuildContext context) {
    return bgWidget(child:Scaffold(
      body: SingleChildScrollView(
        child: Center(child: Column(
          children: [
            (context.screenHeight*0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Join our App $appname".text.fontFamily(bold).white.size(18).make(),
            10.heightBox,
            Column(
              children: [
                customTextField(title:name,hint:nameHint),
                customTextField(title:email,hint:emailHint),
                customTextField(title:password,hint:passwordHint),
                customTextField(title:retypePassword,hint:passwordHint),

                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child: forgotPass.text.make())),
                5.heightBox,
                Row(
                  children: [
                    Checkbox(
                      activeColor: redColor,
                      checkColor: whiteColor,
                      value: isCheck, onChanged: (newValue){
                        setState(() {
                          isCheck=newValue;
                        });
                    },
                    ),
                    10.widthBox,
                    Expanded(
                      child: RichText(text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "I agree to the ",
                            style: TextStyle(fontFamily: regular,fontSize: 12,
                            color: fontGrey
                            )),
                          TextSpan(
                              text: " Terms & Conditions ",
                              style: TextStyle(fontFamily: regular,fontSize: 12,
                                  color: redColor
                              )),
                          TextSpan(
                              text: "and",
                              style: TextStyle(fontFamily: regular,fontSize: 12,
                                  color: fontGrey
                              )),
                          TextSpan(
                              text: " Privacy Policy",
                              style: TextStyle(fontFamily: regular,fontSize: 12,
                                  color: redColor
                              )),
                        ]
                      )),
                    )

                  ],
                ),

                ourButton(
                    onPress: (){

                    },
                    color: isCheck==true?redColor:lightGrey,textColor: whiteColor,title: signup).box.rounded.width(context.screenWidth-50).make(),
                10.heightBox,
                RichText(text: const TextSpan(
                  children: [
                    TextSpan(
                        text: " Already have an Account? ",
                        style: TextStyle(fontFamily: bold,fontSize: 12,
                            color: fontGrey
                        )),
                    TextSpan(
                        text: " Log in ",
                        style: TextStyle(fontFamily: bold,fontSize: 12,
                            color: redColor
                        )),
                  ]
                )).onTap(() { Get.back();})



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
