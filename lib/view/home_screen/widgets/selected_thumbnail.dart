// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:youtubeclone/core/color_constants.dart';
import 'package:youtubeclone/dummy_db.dart';
import 'package:youtubeclone/view/home_screen/widgets/custom_thumbnail_widget.dart';

class SelectedThumbnailCard extends StatelessWidget {
  const SelectedThumbnailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://i.ytimg.com/vi/toviHBBM3Z0/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLAB14k32kuv7GD_ritDdM09XD4urQ"),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              child: Text(
                "Giant Ferrero Rocher Making Recipe | My Big Dream Ferrero | M4 Tech |",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              child: Text("1M views   6 days ago"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://yt3.ggpht.com/Ybu5mW939QWZsOAxzsf1sOqHIFKf8QwY00Rt50hBLxJBjP5INAeD2zSnUMHn1uE6vf_rGwf2Wg=s176-c-k-c0x00ffffff-no-rj-mo",
                    ),
                    radius: 23,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "M4 TECH",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "5M",
                    style: TextStyle(
                        fontSize: 15,
                        color: ColorConstants.primaryBlack.withOpacity(.5)),
                  ),
                  SizedBox(width: 150),
                  Container(
                    height: 35,
                    width: 60,
                    decoration: BoxDecoration(
                        color: ColorConstants.primaryBlack.withOpacity(.21),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.notifications_active),
                        Icon(Icons.keyboard_arrow_down_rounded)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ColorConstants.primaryBlack.withOpacity(.2)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.thumb_up_alt_outlined,
                            color: ColorConstants.primaryBlack.withOpacity(.5),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "600K",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.thumb_down_alt_outlined,
                            color: ColorConstants.primaryBlack.withOpacity(.5),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ColorConstants.primaryBlack.withOpacity(.2)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.screen_share_outlined,
                            color: ColorConstants.primaryBlack.withOpacity(.5),
                          ),
                          Text(
                            "Share",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ColorConstants.primaryBlack.withOpacity(.2)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.autorenew,
                            color: ColorConstants.primaryBlack.withOpacity(.5),
                          ),
                          Text(
                            "Remix",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ColorConstants.primaryBlack.withOpacity(.2)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.heart_broken,
                            color: ColorConstants.primaryBlack.withOpacity(.5),
                          ),
                          Text(
                            "Thanks",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ColorConstants.primaryBlack.withOpacity(.2)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.download_outlined,
                            color: ColorConstants.primaryBlack.withOpacity(.5),
                          ),
                          Text(
                            "Download",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ColorConstants.primaryBlack.withOpacity(.2)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_to_photos_rounded,
                            color: ColorConstants.primaryBlack.withOpacity(.5),
                          ),
                          Text(
                            "Save",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: Container(
                    height: 90,
                    decoration: BoxDecoration(
                        color: ColorConstants.primaryBlack.withOpacity(.2),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "Comments",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: ColorConstants.primaryBlack),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("110K")
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://images.pexels.com/photos/18460803/pexels-photo-18460803/free-photo-of-female-model-wearing-a-black-crop-top-standing-in-a-meadow-at-dusk.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("First Comment")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
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
