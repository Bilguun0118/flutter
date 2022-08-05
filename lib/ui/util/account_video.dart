import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AccountVideo extends StatelessWidget {
  const AccountVideo({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 30,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              height: 400,
              color: Colors.orange[100]),
          );
        });
  }
}