// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:youtubeclone/core/color_constants.dart';

class HomeCatagoryCard extends StatelessWidget {
  const HomeCatagoryCard({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorConstants.primaryBlack.withOpacity(.1),
      ),
      height: 40,
      width: 100,
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Center(child: Text(name))],
        ),
      ),
    );
  }
}
