import 'package:emart/consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ourButton({onPress,color,textColor,required String title}){
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor:color,
        foregroundColor: textColor,
        padding: const EdgeInsets.all(12),
      ),
      onPressed: onPress,
    child: title.text.color(textColor).fontFamily(bold).make(),
  );
}