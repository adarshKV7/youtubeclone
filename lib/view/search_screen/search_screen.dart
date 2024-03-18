// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:youtubeclone/core/color_constants.dart';
import 'package:youtubeclone/view/home_screen/home_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Icon(
                    Icons.arrow_back_ios_sharp,
                    size: 30,
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 280,
                decoration: BoxDecoration(
                    border: Border.all(),
                    color: ColorConstants.primaryBlack.withOpacity(.1),
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search YouTube",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none)),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 15,
                child: Icon(Icons.keyboard_voice_rounded),
              )
            ],
          ),
        ],
      ),
    );
  }
}
