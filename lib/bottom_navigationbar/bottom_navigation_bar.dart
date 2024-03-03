// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:youtubeclone/core/color_constants.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int indexValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          indexValue = index;
          setState(() {});
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
                decoration:
                    BoxDecoration(shape: BoxShape.circle, border: Border.all()),
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
              icon: Icon(
                Icons.library_add,
                size: 25,
              ),
              label: "Library"),
        ],
      ),
    );
  }
}
