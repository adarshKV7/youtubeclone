// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:youtubeclone/core/color_constants.dart';

class ShortsCoverPage extends StatelessWidget {
  const ShortsCoverPage(
      {super.key,
      required this.caption,
      required this.channelName,
      required this.likeCount,
      required this.proPic,
      required this.shortsImage});
  final String caption;
  final String likeCount;
  final String channelName;
  final String shortsImage;
  final String proPic;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(shortsImage), fit: BoxFit.fitHeight),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 110,
              width: 280,
              color: Colors.transparent,
              child: Column(
                children: [
                  Row(children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(""),
                      radius: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      channelName,
                      style: TextStyle(
                          fontSize: 12,
                          color: ColorConstants.primaryWhite,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 30,
                      width: 65,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage(proPic)),
                          color: ColorConstants.primaryWhite,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text(
                        "Subscribe",
                        style: TextStyle(fontSize: 12),
                      )),
                    )
                  ]),
                  Expanded(
                    child: Text(
                      caption,
                      style: TextStyle(color: ColorConstants.primaryWhite),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.music_note_sharp,
                        color: ColorConstants.primaryWhite,
                      ),
                      Expanded(
                        child: Text(
                          "Original sound",
                          style: TextStyle(color: ColorConstants.primaryWhite),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 400,
              width: 100,
              color: Colors.transparent,
              child: Column(
                children: [
                  Icon(
                    Icons.thumb_up_off_alt_sharp,
                    color: ColorConstants.primaryWhite,
                    size: 30,
                  ),
                  Text(
                    "144K",
                    style: TextStyle(
                      color: ColorConstants.primaryWhite,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.thumb_down,
                    color: ColorConstants.primaryWhite,
                    size: 30,
                  ),
                  Text(
                    "Dislike",
                    style: TextStyle(
                      color: ColorConstants.primaryWhite,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.comment,
                    color: ColorConstants.primaryWhite,
                    size: 30,
                  ),
                  Text(
                    "Comments",
                    style: TextStyle(
                      color: ColorConstants.primaryWhite,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.share_sharp,
                    color: ColorConstants.primaryWhite,
                    size: 30,
                  ),
                  Text(
                    "Share",
                    style: TextStyle(
                      color: ColorConstants.primaryWhite,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.cloud_sync_outlined,
                    color: ColorConstants.primaryWhite,
                    size: 30,
                  ),
                  Text(
                    "Remix",
                    style: TextStyle(
                      color: ColorConstants.primaryWhite,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(proPic), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConstants.primaryWhite),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
