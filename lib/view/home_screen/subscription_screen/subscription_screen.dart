// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:youtubeclone/core/constant/image_constants.dart';
import 'package:youtubeclone/dummy_db.dart';

import 'package:youtubeclone/view/home_screen/subscription_screen/widgets/subscription_avatar.dart';
import 'package:youtubeclone/view/home_screen/widgets/custom_thumbnail_widget.dart';
import 'package:youtubeclone/view/home_screen/widgets/home_catagory_card.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(ImageConstants.textLog),
        actions: [
          Icon(
            Icons.cast,
            size: 24,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.notifications_none_outlined,
            size: 24,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: List.generate(
                          DummydB.onlineList.length,
                          (index) => CustomSubscriptionAvatar(
                                proImage: DummydB.onlineList[index]["proImage"]
                                    .toString(),
                                channelName: DummydB.onlineList[index]
                                        ["channelName"]
                                    .toString(),
                              ))),
                )),
            SizedBox(
              height: 40,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                        DummydB.homeTab.length,
                        (index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: HomeCatagoryCard(
                                name: DummydB.homeTab[index]["name"].toString(),
                              ),
                            ))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: DummydB.thumbLineList.length,
                itemBuilder: (context, index) => CustomThumbNailWidget(
                      postImage:
                          DummydB.thumbLineList[index]["postImage"].toString(),
                      proPic:
                          DummydB.thumbLineList[index]["proImage"].toString(),
                      caption:
                          DummydB.thumbLineList[index]["caption"].toString(),
                      channelName: DummydB.thumbLineList[index]["channelName"]
                          .toString(),
                      daysLeft:
                          DummydB.thumbLineList[index]["daysLeft"].toString(),
                      views: DummydB.thumbLineList[index]["views"].toString(),
                    ))
          ],
        ),
      ),
    );
  }
}
