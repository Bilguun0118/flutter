import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BubbleStories extends StatelessWidget {
  // const BubbleStories({Key? key}) : super(key: key);
  
  final String text;

  BubbleStories({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green[400],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(text)
        ],
      ),
    );
  }
}
