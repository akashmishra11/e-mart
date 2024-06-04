import 'package:emart/widgets_common/bg_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:emart/consts/consts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: "Cart Screen".text.white.fontFamily(bold).make(),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(icCart),
              10.heightBox,
              "Your Cart is Empty".text.fontFamily(semibold).color(darkFontGrey).make(),

            ],
          ),
        ),
      ),
    ));


  }
}
