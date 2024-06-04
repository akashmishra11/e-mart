import 'package:emart/consts/consts.dart';
import 'package:flutter/cupertino.dart';

Widget homeButtons({width,height,icon,String?title,onPressed}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(icon,width: 26),
      15.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],

  ).box.rounded.white.size(width, height).shadowSm.make();
}