// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:youtubeclone/core/color_constants.dart';

import 'package:youtubeclone/core/constant/image_constants.dart';
import 'package:youtubeclone/dummy_db.dart';
import 'package:youtubeclone/view/home_screen/widgets/custom_thumbnail_widget.dart';

import 'package:youtubeclone/view/home_screen/widgets/home_catagory_card.dart';
import 'package:youtubeclone/view/notification_screen/notification_screen.dart';
import 'package:youtubeclone/view/search_screen/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationScreen(),
                  ));
            },
            child: Icon(
              Icons.notifications_none_outlined,
              size: 24,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchScreen()));
              },
              child: Icon(Icons.search)),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: ColorConstants.primaryBlack.withOpacity(.1))),
              ),
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
