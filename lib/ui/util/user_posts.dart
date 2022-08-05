import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserPosts extends StatelessWidget {
  final String name;

  UserPosts({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Profile photo
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[300], shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  // Name
                  Text(name),
                ],
              ),
              Icon(Icons.menu)
            ],
          ),
        ),

        // Post
        Container(
          height: 430,
          color: Colors.green[300],
        ),

        // below the post => buttons and comments

        //icons
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),

        //Like by...
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text("Liked by"),
              Text(
                "mitchkoko",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("and"),
              Text(
                "others",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),

        //captioin
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8),
          child: RichText(
              text: TextSpan(style: TextStyle(color: Colors.black), children: [
            TextSpan(text: name, style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text: 'i turn the dirt they throwing into riches til im filthy')
          ])),
        )
      ],
    );
  }
}
