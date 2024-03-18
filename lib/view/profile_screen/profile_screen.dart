// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:youtubeclone/core/color_constants.dart';
import 'package:youtubeclone/core/constant/image_constants.dart';
import 'package:youtubeclone/dummy_db.dart';
import 'package:youtubeclone/view/notification_screen/notification_screen.dart';
import 'package:youtubeclone/view/profile_screen/widgets/custom_button.dart';
import 'package:youtubeclone/view/profile_screen/widgets/custom_containers.dart';
import 'package:youtubeclone/view/profile_screen/widgets/random_containers.dart';
import 'package:youtubeclone/view/search_screen/search_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
          Icon(Icons.settings)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Builder(builder: (context) {
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/598917/pexels-photo-598917.jpeg?auto=compress&cs=tinysrgb&w=600"),
                      radius: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Adarsh K.V",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                "@adarshkv_77",
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                ".View Channel",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: ColorConstants.primaryBlack
                                        .withOpacity(.3)),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 12,
                                color:
                                    ColorConstants.primaryBlack.withOpacity(.3),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [CustomButton()],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    "History",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: List.generate(
                          DummydB.containerTab.length,
                          (index) => CustomContainers(
                                caption: DummydB.containerTab[index]["caption"]
                                    .toString(),
                                duration: DummydB.containerTab[index]
                                        ["duration"]
                                    .toString(),
                                image: DummydB.containerTab[index]["image"]
                                    .toString(),
                              ))),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Playlists",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(width: .5)),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "View all",
                                style: TextStyle(fontSize: 12),
                              )))
                    ],
                  ),
                ),
                RandomContainers(),
                Row(
                  children: [
                    Icon(
                      Icons.smart_display_outlined,
                      size: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Your videos",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.file_download,
                      size: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Downloads",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 1,
                  color: ColorConstants.primaryBlack,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.movie_creation_outlined,
                      size: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Your movies",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.smart_display_outlined,
                      size: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Get Youtube Premium",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 1,
                  color: ColorConstants.primaryBlack,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.analytics_outlined,
                      size: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Time watched",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.help_outline,
                      size: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Help and feedback",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
