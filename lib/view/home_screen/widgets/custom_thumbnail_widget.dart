// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:youtubeclone/core/color_constants.dart';

class CustomThumbNailWidget extends StatelessWidget {
  const CustomThumbNailWidget(
      {super.key,
      required this.caption,
      required this.channelName,
      required this.daysLeft,
      required this.postImage,
      required this.proPic,
      required this.views});

  final String postImage;
  final String proPic;
  final String caption;
  final String channelName;
  final String views;
  final String daysLeft;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.primaryWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(postImage), fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(proPic),
                      radius: 25,
                      backgroundColor: Colors.amber,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                            text: caption,
                            style: TextStyle(
                                color: ColorConstants.primaryBlack,
                                fontWeight: FontWeight.w600),
                            children: []),
                      ),
                    ),
                    Icon(Icons.more_vert)
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 65),
            child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                  text: channelName,
                  style: TextStyle(
                      color: ColorConstants.primaryBlack.withOpacity(.5)),
                  children: [TextSpan(text: views), TextSpan(text: daysLeft)]),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
