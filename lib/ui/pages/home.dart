import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:instagram_f/ui/util/bubble_stories.dart';
import 'package:instagram_f/ui/util/user_posts.dart';

class UserHome extends StatelessWidget {
  // const UserHome({Key? key}) : super(key: key);
  final List names = [
    'tsastmaartiingerel',
    'johhny',
    'marrina',
    'margarite',
    'obama'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffafafa),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              child: CachedNetworkImage(imageUrl: "https://www.pngitem.com/pimgs/m/132-1327993_instagram-logo-word-png-transparent-png.png", width: 150, height: 50,),
            ),
            // const Text(
            //   "instagram",
            //   style: TextStyle(color: Colors.black),
            // ),
            Row(
              children: const [
                Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                ),
                Icon(
                  Icons.messenger,
                  color: Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //stories
          Container(
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return BubbleStories(names: names[index]);
                }),
            decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                    top: BorderSide(
                      color: Colors.grey,
                      width: 0.6,
                      style: BorderStyle.solid,
                    ),
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 0.6,
                      style: BorderStyle.solid,
                    ))),
          ),
          // Post
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: names.length,
              itemBuilder: (context, index) {
                return UserPosts(
                  name: names[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
