import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Input extends StatelessWidget {
  //final String text;
  final String? hintText;

  // const Input({Key? key}) : super(key: key);

  const Input({Key? key, required this.hintText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      height: 44,
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          hintText: (hintText),
        ),
      ),
    );
  }
}
