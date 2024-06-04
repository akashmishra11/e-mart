import 'package:emart/views/catagory_screen/Item_Details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:emart/widgets_common/bg_widgets.dart';
import 'package:emart/consts/consts.dart';
import 'package:get/get.dart';

class CategoryDetails extends StatelessWidget {
  final String?title;
  const CategoryDetails({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: title!.text.fontFamily(bold).white.make(),
          ),
          body: Container(
            padding: const EdgeInsets.all(12),
            child:  Column(
              children: [
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(6,(index) =>
                        "Baby Clothing".text.size(12).fontFamily(semibold)
                            .color(darkFontGrey).makeCentered()
                            .box.rounded.white.size(100,50)
                            .margin(const EdgeInsets.symmetric(horizontal: 4)).make()),
                  ),
                ),
                20.heightBox,

                Expanded(child: Container(
                  color: lightGrey,
                  child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: 6,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          mainAxisExtent: 230),
                      itemBuilder: (context,index){
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              imgP5,
                              height: 150,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            "Laptop 4GB/16GB".text.fontFamily(semibold).color(Colors.grey).make(),
                            10.heightBox,
                            "\$600".text.color(redColor).fontFamily(bold).size(16).make()
                          ],

                        ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).white.roundedSM.shadowSm.padding(const EdgeInsets.all(12)).make().onTap(() {
                          Get.to(()=> ItemDetails(title: "Dummy Item"));
                        });
                      }

                  )
                ))

              ],
            ),
          ),
        )
    );
  }
}
