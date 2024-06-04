import 'package:emart/consts/colors.dart';
import 'package:emart/consts/consts.dart';
import 'package:emart/consts/lists.dart';
import 'package:emart/widgets_common/our_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final String?title;
  const ItemDetails({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: lightGrey,
      appBar:
      AppBar(
        title: title!.text.fontFamily(semibold).color(darkFontGrey).make(),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.share)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline,)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),

                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      VxSwiper.builder(
                          itemCount: 3,
                          aspectRatio: 16/9,
                          autoPlay: true,
                          height: 300,
                          itemBuilder: (context,index){
                        return Image.asset(
                          imgFc5,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        );
                      }),
                      10.heightBox,
                      title!.text.size(16).color(darkFontGrey).fontFamily(semibold).make(),
                      10.heightBox,
                      VxRating(onRatingUpdate: (value){},
                        normalColor: textfieldGrey,
                        selectionColor: golden,
                        count: 5,
                        size: 25,
                        stepInt: true,),
                      10.heightBox,
                      "\$30,000".text.color(redColor).fontFamily(bold).size(18).make(),
                      10.heightBox,
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                "Seller".text.white.fontFamily(semibold).make(),
                                5.heightBox,
                                "In House Brand".text.fontFamily(semibold).color(darkFontGrey).size(16).make(),
                                
                              ],
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.message_rounded,color: darkFontGrey,),
                          )
                        ],
                      ).box.height(55).padding(const EdgeInsets.symmetric(horizontal: 16)).color(textfieldGrey).make(),
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: "Color: ".text.color(textfieldGrey).make(),
                              ),
                              Row(
                                children: List.generate(
                                    3, (index) => VxBox().size(40, 40).roundedFull.color(Vx.randomPrimaryColor).margin(const EdgeInsets.symmetric(horizontal: 2)).make()),
                              ),
                            ],
                          ).box.padding(const EdgeInsets.all(8)).make(),

                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: "Quantity: ".text.color(textfieldGrey).make(),
                              ),
                              Row(
                                children: [
                                  IconButton(onPressed: (){}, icon: const Icon(Icons.remove)),
                                  "0".text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                                  IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
                                  10.widthBox,
                                  "(0 Available)".text.color(textfieldGrey).make(),
                                ]
                              ),
                            ],
                          ).box.padding(const EdgeInsets.all(8)).make(),
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: "Total: ".text.color(textfieldGrey).make(),
                              ),
                              Row(
                                  children: [
                                    "\$0.00".text.color(redColor).size(16).fontFamily(bold).make(),
                                  ]
                              ),
                            ],
                          ).box.padding(const EdgeInsets.all(8)).make(),
                          
                        ],
                      ).box.white.shadowSm.make(),
                      10.heightBox,
                      "Description".text.fontFamily(semibold).color(darkFontGrey).make(),
                      10.heightBox,
                      "This is Dummy item and Dummy Description....".text.fontFamily(semibold).color(darkFontGrey).make(),
                      ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: List.generate(
                          itemDetailButtonList.length, (index) => ListTile(
                          title: "${itemDetailButtonList[index]}".text.fontFamily(semibold).color(darkFontGrey).make(),
                          trailing: Icon(Icons.arrow_forward),
                        ))
                      ),
                      productsyoumaylike.text.fontFamily(semibold).color(darkFontGrey).make(),
                      10.heightBox,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
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
                      
                  ]
                  ),
                ),
              )),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ourButton(
                color: redColor,
                title: "Add to Cart",
                textColor: whiteColor,
                onPress: (){
                    }),
          ),
        ],
      ),
    );
  }
}
