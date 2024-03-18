// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:youtubeclone/view/shorts_screen/widgets/shorts_cover_page.dart';

class ShortsScreen extends StatelessWidget {
  const ShortsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShortsCoverPage(),
    );
  }
}
