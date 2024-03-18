// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:youtubeclone/core/color_constants.dart';
import 'package:youtubeclone/view/search_screen/search_screen.dart';

class ShortsCoverPage extends StatelessWidget {
  const ShortsCoverPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://images.pexels.com/photos/20350979/pexels-photo-20350979/free-photo-of-a-beach-with-umbrellas-and-chairs-on-it.jpeg?auto=compress&cs=tinysrgb&w=300&lazy=load",
                      ),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SearchScreen()));
                            },
                            child: Icon(
                              Icons.search,
                              color: ColorConstants.primaryWhite,
                            )),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.more_vert_outlined,
                          size: 30,
                          color: ColorConstants.primaryWhite,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 209),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 120,
                        width: 310,
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                        "https://images.pexels.com/photos/20264899/pexels-photo-20264899/free-photo-of-a-woman-sitting-on-a-bench-next-to-the-sea.jpeg?auto=compress&cs=tinysrgb&w=300&lazy=load",
                                      ),
                                      radius: 15,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      "@COMIC_Media",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: ColorConstants.primaryWhite,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 30,
                                              width: 65,
                                              decoration: BoxDecoration(
                                                  color: ColorConstants
                                                      .primaryWhite,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: Center(
                                                  child: Text(
                                                "Subscribe",
                                                style: TextStyle(fontSize: 12),
                                              )),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "The generated Lorem Ipsum is therefore",
                                  style: TextStyle(
                                      color: ColorConstants.primaryWhite),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.music_note_sharp,
                                      color: ColorConstants.primaryWhite,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Original sound",
                                      style: TextStyle(
                                          color: ColorConstants.primaryWhite),
                                    ),
                                  ],
                                )
                              ]),
                        ),
                      ),
                      Container(
                        height: 430,
                        width: 80,
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            Icon(
                              Icons.thumb_up_off_alt_sharp,
                              color: ColorConstants.primaryWhite,
                              size: 30,
                            ),
                            Text(
                              "137K",
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
                              Icons.autorenew,
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
                                      image: NetworkImage(
                                        "https://images.pexels.com/photos/20264899/pexels-photo-20264899/free-photo-of-a-woman-sitting-on-a-bench-next-to-the-sea.jpeg?auto=compress&cs=tinysrgb&w=300&lazy=load",
                                      ),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                  color: ColorConstants.primaryWhite),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://images.pexels.com/photos/20308702/pexels-photo-20308702/free-photo-of-a-creek-runs-through-a-forested-area-with-trees.jpeg?auto=compress&cs=tinysrgb&w=300&lazy=load",
                      ),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.search,
                          size: 30,
                          color: ColorConstants.primaryWhite,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.more_vert_outlined,
                          size: 30,
                          color: ColorConstants.primaryWhite,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 209),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 120,
                        width: 310,
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                        "https://images.pexels.com/photos/19759188/pexels-photo-19759188/free-photo-of-bride-in-traditional-indian-jewelry.jpeg?auto=compress&cs=tinysrgb&w=300&lazy=load",
                                      ),
                                      radius: 15,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      "@Mallu Travaller",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: ColorConstants.primaryWhite,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Row(
                                      children: [],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "It is a long established fact that a reader",
                                  style: TextStyle(
                                      color: ColorConstants.primaryWhite),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.music_note_sharp,
                                      color: ColorConstants.primaryWhite,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Original sound",
                                      style: TextStyle(
                                          color: ColorConstants.primaryWhite),
                                    ),
                                  ],
                                )
                              ]),
                        ),
                      ),
                      Container(
                        height: 430,
                        width: 80,
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            Icon(
                              Icons.thumb_up_off_alt_sharp,
                              color: const Color.fromARGB(255, 26, 96, 162),
                              size: 30,
                            ),
                            Text(
                              "1M",
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
                              Icons.autorenew,
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
                                      image: NetworkImage(
                                        "https://images.pexels.com/photos/19759188/pexels-photo-19759188/free-photo-of-bride-in-traditional-indian-jewelry.jpeg?auto=compress&cs=tinysrgb&w=300&lazy=load",
                                      ),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                  color: ColorConstants.primaryWhite),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://images.pexels.com/photos/20372669/pexels-photo-20372669/free-photo-of-athens-greece.jpeg?auto=compress&cs=tinysrgb&w=300&lazy=load",
                      ),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.search,
                          size: 30,
                          color: ColorConstants.primaryWhite,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.more_vert_outlined,
                          size: 30,
                          color: ColorConstants.primaryWhite,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 209),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 120,
                        width: 310,
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                        "https://images.pexels.com/photos/20268770/pexels-photo-20268770/free-photo-of-a-woman-in-black-sitting-on-a-chair.jpeg?auto=compress&cs=tinysrgb&w=300&lazy=load",
                                      ),
                                      radius: 15,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      "@Munches Stories",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: ColorConstants.primaryWhite,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 30,
                                              width: 65,
                                              decoration: BoxDecoration(
                                                  color: ColorConstants
                                                      .primaryWhite,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: Center(
                                                  child: Text(
                                                "Subscribe",
                                                style: TextStyle(fontSize: 12),
                                              )),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "Contrary to popular belief, Lorem Ipsum",
                                  style: TextStyle(
                                      color: ColorConstants.primaryWhite),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.music_note_sharp,
                                      color: ColorConstants.primaryWhite,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Original sound",
                                      style: TextStyle(
                                          color: ColorConstants.primaryWhite),
                                    ),
                                  ],
                                )
                              ]),
                        ),
                      ),
                      Container(
                        height: 430,
                        width: 80,
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            Icon(
                              Icons.thumb_up_off_alt_sharp,
                              color: ColorConstants.primaryWhite,
                              size: 30,
                            ),
                            Text(
                              "98K",
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
                              Icons.autorenew,
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
                                      image: NetworkImage(
                                        "https://images.pexels.com/photos/20268770/pexels-photo-20268770/free-photo-of-a-woman-in-black-sitting-on-a-chair.jpeg?auto=compress&cs=tinysrgb&w=300&lazy=load",
                                      ),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                  color: ColorConstants.primaryWhite),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
