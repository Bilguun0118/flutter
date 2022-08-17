import 'package:flutter/material.dart';

class OptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: 110),
                  Row(
                    children: [
                      CircleAvatar(
                        child: Icon(Icons.person, size: 18),
                        radius: 16,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'flutter_developer02',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        Icons.verified,
                        size: 15,
                        color: Colors.white,
                      ),
                      SizedBox(width: 6),
                      Container(
                        padding: const EdgeInsets.all(0),
                        margin: const EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                          color: Colors.white,
                        )),
                        child: 
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Follow',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 6),
                  Text(
                    'Flutter is beautiful and fast 💙❤💛 ..',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.music_note,
                        size: 15,
                      ),
                      Text(
                        'Original Audio - some music track--',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.favorite_outline,
                    color: Colors.white,
                  ),
                  Text(
                    '601k',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Icon(
                    Icons.comment_rounded,
                    color: Colors.white,
                  ),
                  Text(
                    '1123',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Transform(
                    transform: Matrix4.rotationZ(5.8),
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
