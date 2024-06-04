import 'package:emart/consts/consts.dart';
import 'package:emart/consts/lists.dart';
import 'package:emart/views/catagory_screen/category_details.dart';
import 'package:emart/widgets_common/bg_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: categories.text.fontFamily(bold).white.make(),
        ),
        backgroundColor: Colors.transparent,
        body: Container(
          padding:  EdgeInsets.all(8),
          child: GridView.builder(
            shrinkWrap: true,
              itemCount: 9,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:3,crossAxisSpacing: 8,mainAxisSpacing: 8,mainAxisExtent: 200
              ), itemBuilder: (context,index){
                return Column(
                  children: [
                    Image.asset(categoriesImage[index],height: 120,width: 200,fit: BoxFit.cover,),
                    10.heightBox,
                    categoriesList[index].text.fontFamily(semibold).color(darkFontGrey).align(TextAlign.center).make()
                  ],
                ).box.white.rounded.clip(Clip.antiAlias).outerShadowSm.make().onTap(() { 
                  Get.to(()=>CategoryDetails(title: categoriesList[index]));
                });
    },
          // Add any content for the CategoryScreen here
        ),
      ),
      ));
  }
}
