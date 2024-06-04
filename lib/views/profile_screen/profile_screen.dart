import 'package:emart/consts/consts.dart';
import 'package:emart/consts/lists.dart';
import 'package:emart/views/profile_screen/components/details_card.dart';
import 'package:emart/widgets_common/bg_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(child: Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.edit,color: whiteColor,))
                  .onTap((){
                  }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Image.asset(imgProfile2,width: 90,fit: BoxFit.cover,).box.roundedFull.clip(Clip.antiAlias).make(),
                  10.widthBox,
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "UserName".text.white.fontFamily(semibold).size(10).make(),
                      "Akash@mishra.com".text.fontFamily(semibold).white.size(10).make()
                    ],
                  )),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side:const BorderSide(
                        color: whiteColor,

                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    onPressed: (){},child: logout.text.white.size(8).fontFamily(semibold).make(),)
                ],
              ),
            ),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailsCard(count:"00",title: "In your Cart",width: context.screenWidth/3.2),
                detailsCard(count:"22",title: "In your Wishlist",width: context.screenWidth/3.2),
                detailsCard(count:"647",title: "Your orders",width: context.screenWidth/3.2),
              ],
            ),
            10.heightBox,
            ListView.separated(
              shrinkWrap: true,
                itemBuilder:(context, index) {
                  return ListTile(
                    title: profileButtonList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                    leading: Image.asset(
                      profileButtonIcons[index],
                      width: 22,
                    ),
                  );
                },
                separatorBuilder:(context, index) {
                  return const Divider(color:lightGrey,);
                },
                itemCount:profileButtonList.length
            ).box.white.rounded.margin(const EdgeInsets.all(12)).padding(const EdgeInsets.symmetric(horizontal: 16)).shadowSm.make().box.color(redColor).make()
          ],
        ),
        

      ),
    ));

  }
}
