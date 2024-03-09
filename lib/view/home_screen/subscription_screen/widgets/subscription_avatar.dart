// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:youtubeclone/core/color_constants.dart';

import 'package:youtubeclone/view/home_screen/widgets/home_catagory_card.dart';

class CustomSubscriptionAvatar extends StatelessWidget {
  const CustomSubscriptionAvatar({
    super.key,
    required this.channelName,
    required this.proImage,
  });
  final String proImage;
  final String channelName;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 80,
          width: 80,
          color: ColorConstants.primaryWhite,
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(proImage),
                radius: 30,
                backgroundColor: ColorConstants.primaryYellow,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, left: 40),
                  child: CircleAvatar(
                    radius: 6,
                    backgroundColor: Color.fromARGB(255, 7, 92, 172),
                  ),
                ),
              ),
              Center(
                child: Text(
                  channelName,
                  maxLines: 1,
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
