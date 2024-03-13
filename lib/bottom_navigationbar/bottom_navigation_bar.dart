// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:youtubeclone/core/color_constants.dart';
import 'package:youtubeclone/view/home_screen/home_screen.dart';
import 'package:youtubeclone/view/home_screen/profile_screen/profile_screen.dart';
import 'package:youtubeclone/view/home_screen/subscription_screen/subscription_screen.dart';
import 'package:youtubeclone/view/shorts_screen/shorts_screen.dart';
import 'package:youtubeclone/view/user_post_screen/user_post_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  List<Widget> screenList = [
    HomeScreen(),
    ShortsScreen(),
    UserPostScreen(),
    SubscriptionScreen(),
    ProfileScreen(),
  ];
  int indexValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[indexValue],
      bottomNavigationBar: SizedBox(
        child: BottomNavigationBar(
          onTap: (value) {
            if (value != 2) {
              indexValue = value;
              setState(() {});
            } else {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserPostScreen(),
                  ));
            }
          },
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(fontSize: 10),
          selectedItemColor: ColorConstants.primaryBlack,
          currentIndex: indexValue,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 25,
                ),
                label: "Home"),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.shop_two,
                  size: 25,
                ),
                label: "Shorts"),
            BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, border: Border.all()),
                  child: Icon(
                    Icons.add,
                    size: 25,
                  ),
                ),
                label: ""),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.subscriptions,
                size: 25,
              ),
              label: "Subscriptions",
            ),
            const BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/598917/pexels-photo-598917.jpeg?auto=compress&cs=tinysrgb&w=600"),
                  radius: 13,
                ),
                label: "You"),
          ],
        ),
      ),
    );
  }
}
