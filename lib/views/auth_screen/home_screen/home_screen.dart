import 'package:emart/consts/consts.dart';
import 'package:emart/consts/lists.dart';
import 'package:emart/views/auth_screen/home_screen/components/featured_button.dart';
import 'package:emart/widgets_common/home_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: Colors.white60,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 45,
              alignment: Alignment.center,
              color: Colors.blueGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  fillColor: whiteColor,
                  filled: true,
                  hintText: searchanything,
                  hintStyle: TextStyle(
                    color: textfieldGrey,
                  )

                ),
              ),
            ),
            10.heightBox,
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    VxSwiper.builder(
                        aspectRatio: 16/9,
                        autoPlay: true,
                        height: 140,
                        enlargeCenterPage: true,
                        itemCount: slidersList.length,
                        itemBuilder: (context,index) {
                          return Image.asset(
                              slidersList[index],
                              fit: BoxFit.fill
                          ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                        }
                    ),
                    20.heightBox,
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                
                        children:
                        List.generate(2, (index) => homeButtons(
                            height: context.screenHeight*0.10,
                            width: context.screenWidth/2.5,
                            icon: index == 0 ? icTodaysDeal : icFlashDeal,
                            title: index==0 ? todaydeal : flashsale
                        ))
                    ),
                    20.heightBox,
                    VxSwiper.builder(
                        aspectRatio: 16/9,
                        autoPlay: true,
                        height: 100,
                        enlargeCenterPage: true,
                        itemCount: SecondSliderList.length,
                        itemBuilder: (context,index) {
                          return Image.asset(
                              SecondSliderList[index],
                              fit: BoxFit.fill
                          ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                        }
                    ),
                    20.heightBox,
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:
                        List.generate(3, (index) => homeButtons(
                          height: context.screenHeight*0.12,
                          width: context.screenWidth/3.5,
                          icon: index == 0 ? icTopCategories : index == 1?icBrands:icTopSeller,
                          title: index == 0 ? topCategories : index == 1?brands:topsellers,
                        ))
                    ),
                    20.heightBox,
                    Align(
                        alignment: Alignment.centerLeft,
                        child: featuredCategory.text.color(darkFontGrey).size(18).fontFamily(semibold).make()),
                    20.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            3,
                                (index) => Column(
                                  children: [
                                    featuredButton(icon: featuredImages1[index],title: featuredTitles1[index]),
                                    10.heightBox,
                                    featuredButton(icon: featuredImages2[index],title: featuredTitles2[index])
                                  ],
                                )
                        ).toList(),
                      ),
                    ),

                    20.heightBox,
                    Container(
                      padding: EdgeInsets.all(12),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: redColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          featuredProducts.text.white.fontFamily(bold).size(18).color(darkFontGrey).make(),
                          10.heightBox,
                          SingleChildScrollView(scrollDirection: Axis.horizontal,

                            child: Row(
                              children:
                              List.generate(6, (index) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  imgP1,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                                10.heightBox,
                                "Laptop 4GB/16GB".text.fontFamily(semibold).color(Colors.grey).make(),
                                10.heightBox,
                                "\$600".text.color(redColor).fontFamily(bold).size(16).make()
                              ],

                            ).box.margin(const EdgeInsets.symmetric(horizontal: 4)).white.roundedSM.padding(const EdgeInsets.all(8)).make()),

                            ),
                          )
                        ],
                         

                      ),
                    ),
                    20.heightBox,
                    VxSwiper.builder(
                        aspectRatio: 16/9,
                        autoPlay: true,
                        height: 100,
                        enlargeCenterPage: true,
                        itemCount: SecondSliderList.length,
                        itemBuilder: (context,index) {
                          return Image.asset(
                              SecondSliderList[index],
                              fit: BoxFit.fill
                          ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                        }
                    ),
                    20.heightBox,

                    GridView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                        itemCount: 6,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        mainAxisExtent: 250),
                        itemBuilder: (context,index){
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                imgP5,
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              const Spacer(),
                              "Laptop 4GB/16GB".text.fontFamily(semibold).color(Colors.grey).make(),
                              10.heightBox,
                              "\$600".text.color(redColor).fontFamily(bold).size(16).make()
                            ],

                          ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).white.roundedSM.padding(const EdgeInsets.all(12)).make();
                        }

                    )

                  ],
                
                ),
              ),
            )

          ],
        ),
      ),


    );

  }
}
