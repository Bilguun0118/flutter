import 'package:flutter/material.dart';
import 'package:instagram_f/ui/util/shop_grid.dart';

class UserShop extends StatelessWidget {
  const UserShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: const EdgeInsets.all(8),
            color: const Color(0xffeaeaeb),
            child: Row(children: [
              const Icon(
                Icons.search,
                color: Color(0xff8b8b8f),
              ),
              Container(
                child: const Text(
                  "Search",
                  style: TextStyle(color: Color(0xff8b8b8f), fontSize: 16, fontWeight: FontWeight.w400),
                ),
              )
            ]),
          ),
        ),
      ),
      //Image grid
      body: ShopGrid(),
    );
  }
}