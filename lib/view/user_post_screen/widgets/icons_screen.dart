// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:youtubeclone/core/color_constants.dart';

class IconsScreen extends StatelessWidget {
  const IconsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.pexels.com/photos/18625018/pexels-photo-18625018/free-photo-of-model-sitting-and-posing-with-arms-crossed-on-beach.png?auto=compress&cs=tinysrgb&w=600&lazy=load"),
              fit: BoxFit.fill)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Container(
                  height: 10,
                  decoration: BoxDecoration(
                      color: ColorConstants.primaryBlack.withOpacity(.2),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                  backgroundColor: ColorConstants.primaryBlack.withOpacity(.3),
                  radius: 20,
                  child: Icon(
                    Icons.close,
                    size: 30,
                    color: ColorConstants.primaryWhite,
                  )),
              Container(
                height: 40,
                width: 130,
                decoration: BoxDecoration(
                    color: ColorConstants.primaryBlack.withOpacity(.3),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.audiotrack_rounded,
                      color: ColorConstants.primaryWhite,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      "Add sound",
                      style: TextStyle(color: ColorConstants.primaryWhite),
                    )
                  ],
                ),
              ),
              CircleAvatar(
                backgroundColor: ColorConstants.primaryBlack.withOpacity(.3),
                radius: 20,
                child: Text(
                  "15s",
                  style: TextStyle(color: ColorConstants.primaryWhite),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 160, horizontal: 20),
                child: Container(
                  height: 280,
                  width: 40,
                  decoration: BoxDecoration(
                      color: ColorConstants.primaryBlack.withOpacity(.3),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.autorenew,
                        size: 30,
                        color: ColorConstants.primaryWhite,
                      ),
                      Icon(
                        Icons.timer_outlined,
                        size: 30,
                        color: ColorConstants.primaryWhite,
                      ),
                      Icon(
                        Icons.adjust_rounded,
                        size: 30,
                        color: ColorConstants.primaryWhite,
                      ),
                      Icon(
                        Icons.blur_on_outlined,
                        size: 30,
                        color: ColorConstants.primaryWhite,
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor:
                            ColorConstants.primaryBlack.withOpacity(.1),
                        child: Icon(Icons.keyboard_arrow_down_outlined),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 1),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  width: 80,
                ),
                CircleAvatar(
                  backgroundColor: ColorConstants.lightGrey,
                  radius: 35,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black.withOpacity(.1),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.red,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 32,
          )
        ],
      ),
    );
  }
}
