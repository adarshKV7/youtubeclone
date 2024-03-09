// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:youtubeclone/core/color_constants.dart';
import 'package:youtubeclone/dummy_db.dart';

class CustomContainers extends StatelessWidget {
  const CustomContainers(
      {super.key,
      required this.caption,
      required this.duration,
      required this.image});

  final String image;
  final String duration;
  final String caption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 120,
        width: 150,
        child: Column(
          children: [
            Container(
              height: 80,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(
                        image,
                      ),
                      fit: BoxFit.cover)),
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: ColorConstants.primaryBlack.withOpacity(.3),
                          borderRadius: BorderRadius.circular(02)),
                      child: Text(
                        duration,
                        style: TextStyle(
                            color: ColorConstants.primaryWhite, fontSize: 12),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 4,
              width: 140,
              color: Colors.red,
            ),
            Expanded(child: Text(caption)),
          ],
        ),
      ),
    );
  }
}
