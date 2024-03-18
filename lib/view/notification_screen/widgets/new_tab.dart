// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:youtubeclone/core/color_constants.dart';

class NewTab extends StatelessWidget {
  const NewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorConstants.primaryBlack.withOpacity(.1),
          ),
          height: 40,
          width: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("All")],
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorConstants.primaryBlack.withOpacity(.1),
          ),
          height: 40,
          width: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Mentions")],
          ),
        ),
      ],
    );
  }
}
