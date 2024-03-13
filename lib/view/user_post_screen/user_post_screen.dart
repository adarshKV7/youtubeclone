// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:youtubeclone/core/color_constants.dart';
import 'package:youtubeclone/view/user_post_screen/widgets/icons_screen.dart';

class UserPostScreen extends StatelessWidget {
  const UserPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [IconsScreen()],
    ));
  }
}
