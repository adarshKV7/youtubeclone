// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:youtubeclone/core/color_constants.dart';

class TodayNotificationScreen extends StatelessWidget {
  const TodayNotificationScreen({
    super.key,
    required this.image,
    required this.text,
    required this.thumbNail,
    required this.time,
  });
  final String image;
  final String thumbNail;
  final String time;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          color: ColorConstants.primaryWhite,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(image),
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
                      text,
                      style: TextStyle(color: ColorConstants.primaryBlack),
                    ),
                    Text(
                      time,
                      style: TextStyle(
                          color: ColorConstants.primaryBlack.withOpacity(.5)),
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
                        image: NetworkImage(thumbNail), fit: BoxFit.cover),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Icon(Icons.more_vert_rounded),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
