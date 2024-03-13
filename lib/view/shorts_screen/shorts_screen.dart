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
      body: Container(child: ShortsCoverPage()),
    );
  }
}
