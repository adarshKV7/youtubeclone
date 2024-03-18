// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:youtubeclone/core/color_constants.dart';
import 'package:youtubeclone/dummy_db.dart';
import 'package:youtubeclone/view/home_screen/home_screen.dart';
import 'package:youtubeclone/view/notification_screen/widgets/new_tab.dart';
import 'package:youtubeclone/view/notification_screen/widgets/today_notification.dart';
import 'package:youtubeclone/view/search_screen/search_screen.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Icon(
            Icons.arrow_back_ios_sharp,
            size: 30,
          ),
        ),
        title: Text(
          "Notifications",
          style: TextStyle(
              color: ColorConstants.primaryBlack, fontWeight: FontWeight.bold),
        ),
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
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            NewTab(),
            SizedBox(
              height: 15,
            ),
            Text(
              "Important",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ColorConstants.primaryBlack.withOpacity(.5),
                  fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              color: ColorConstants.primaryWhite,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/712413/pexels-photo-712413.jpeg?auto=compress&cs=tinysrgb&w=600"),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 100,
                    width: 148,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "These cases are perfectly | simple and easy to distinguish | In a free hour",
                          style: TextStyle(color: ColorConstants.primaryBlack),
                        ),
                        Text(
                          "1 hour ago",
                          style: TextStyle(
                              color:
                                  ColorConstants.primaryBlack.withOpacity(.5)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 100,
                    width: 140,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.pexels.com/photos/1547813/pexels-photo-1547813.jpeg?auto=compress&cs=tinysrgb&w=600"),
                            fit: BoxFit.cover),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Icon(Icons.more_vert_rounded)
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/445109/pexels-photo-445109.jpeg?auto=compress&cs=tinysrgb&w=600"),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 100,
                    width: 148,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Et harum quidem rerum facilis est et| expedita distinctio| Nam libero tempore",
                          style: TextStyle(color: ColorConstants.primaryBlack),
                        ),
                        Text(
                          "10 hour ago",
                          style: TextStyle(
                              color:
                                  ColorConstants.primaryBlack.withOpacity(.5)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 100,
                    width: 140,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=600")),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Icon(Icons.more_vert_rounded)
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Today",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ColorConstants.primaryBlack.withOpacity(.5),
                  fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: List.generate(
                  DummydB.notificationTab.length,
                  (index) => TodayNotificationScreen(
                        image:
                            DummydB.notificationTab[index]["image"].toString(),
                        text: DummydB.notificationTab[index]["text"].toString(),
                        thumbNail: DummydB.notificationTab[index]["thumbNail"]
                            .toString(),
                        time: DummydB.notificationTab[index]["time"].toString(),
                      )),
            )
          ]),
        ),
      ),
    );
  }
}
