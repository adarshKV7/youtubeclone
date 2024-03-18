// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:youtubeclone/core/color_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 30,
            decoration: BoxDecoration(
                color: ColorConstants.primaryBlack.withOpacity(.1),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.switch_account,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Switch account",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 3,
          ),
          Container(
            height: 30,
            decoration: BoxDecoration(
                color: ColorConstants.primaryBlack.withOpacity(.1),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.g_mobiledata_rounded,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Google Account",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            height: 30,
            decoration: BoxDecoration(
                color: ColorConstants.primaryBlack.withOpacity(.1),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.visibility,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Turn on Incoginito",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
