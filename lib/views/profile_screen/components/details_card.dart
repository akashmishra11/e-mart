import 'package:emart/consts/consts.dart';
import 'package:flutter/cupertino.dart';

Widget detailsCard({width,String?count,String?title}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      count!.text.fontFamily(bold).color(darkFontGrey).make(),
      title!.text.color(darkFontGrey).make(),
    ],
  ).box.white.rounded.width(width).height(60).padding(const EdgeInsets.all(4)).make();
}