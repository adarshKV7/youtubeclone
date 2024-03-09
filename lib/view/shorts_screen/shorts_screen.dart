// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:youtubeclone/core/color_constants.dart';
import 'package:youtubeclone/dummy_db.dart';

import 'package:youtubeclone/view/shorts_screen/widgets/shorts_cover_page.dart';

class ShortsScreen extends StatelessWidget {
  const ShortsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Icon(
              Icons.search,
              size: 30,
              color: ColorConstants.primaryWhite,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.more_vert_outlined,
              color: ColorConstants.primaryWhite,
              size: 30,
            )
          ],
          backgroundColor: Colors.transparent,
        ),
        extendBodyBehindAppBar: true,
        body: ListView.builder(
          itemCount: DummydB.reelsTab.length,
          itemBuilder: (context, index) => ShortsCoverPage(
              channelName: DummydB.reelsTab[index]["channelName"].toString(),
              caption: DummydB.reelsTab[index]["caption"].toString(),
              likeCount: DummydB.reelsTab[index]["likeCount"].toString(),
              proPic: DummydB.reelsTab[index]["proPic"].toString(),
              shortsImage: DummydB.reelsTab[index]["shortsImage"].toString()),
        ));
  }
}
