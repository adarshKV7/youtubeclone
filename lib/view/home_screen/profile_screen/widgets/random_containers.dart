// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:youtubeclone/core/color_constants.dart';

class RandomContainers extends StatelessWidget {
  const RandomContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 4,
                    width: 140,
                    color: ColorConstants.primaryBlack.withOpacity(.5),
                  ),
                ),
                Container(
                  height: 80,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        opacity: .5,
                        image: NetworkImage(
                          "https://i.ytimg.com/vi/toviHBBM3Z0/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLAB14k32kuv7GD_ritDdM09XD4urQ",
                        ),
                        fit: BoxFit.cover,
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.thumb_up,
                        color: ColorConstants.primaryWhite,
                      ),
                      Text(
                        "5,000",
                        style: TextStyle(color: ColorConstants.primaryWhite),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: Text("Liked videos"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: Text("Private"),
                )
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 150,
            width: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 4,
                    width: 140,
                    color: ColorConstants.primaryBlack.withOpacity(.1),
                  ),
                ),
                Container(
                  height: 80,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          opacity: .5,
                          image: NetworkImage(
                            "https://i.ytimg.com/vi/_XYHjf25GPc/hqdefault.jpg",
                          ),
                          fit: BoxFit.cover)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.access_time_rounded,
                        color: ColorConstants.primaryWhite,
                      ),
                      Text(
                        "112",
                        style: TextStyle(color: ColorConstants.primaryWhite),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: Text("Saved videos"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: Text("Public"),
                )
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Container(
                height: 75,
                color: ColorConstants.primaryWhite,
                child: CircleAvatar(
                  radius: 25,
                  child: Icon(Icons.add),
                ),
              ),
              Text("New playlist")
            ],
          )
        ],
      ),
    );
  }
}
