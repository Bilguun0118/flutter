import 'package:flutter/material.dart';
import 'package:instagram_f/ui/util/bubble_stories.dart';
import 'package:instagram_f/ui/util/user_posts.dart';

class UserHome extends StatelessWidget {
  // const UserHome({Key? key}) : super(key: key);
  final List people = [
    'mongol',
    'johhny',
    'marrina',
    'margarite',
    'obama',
    'bataa'
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
            Text(
              "instagragm",
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                Icon(Icons.add),
                Padding(padding: const EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.messenger),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          //stories
          Container(
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(text: people[index]);
                }),
            decoration: BoxDecoration(
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
              itemBuilder: (context, index) {
                return UserPosts(
                  name: people[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
