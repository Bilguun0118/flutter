import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class AccountVideo extends StatelessWidget {
  const AccountVideo({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: masonryLayout(context),
        ),
      ),
    );
  }

  

  Widget masonryLayout(BuildContext context) {
    return GridView.builder(
      // shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      gridDelegate: SliverQuiltedGridDelegate(
        crossAxisCount: 3,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        // repeatPattern: QuiltedGridRepeatPattern.inverted,
        pattern: const [
          QuiltedGridTile(2, 1),
          QuiltedGridTile(2, 1),
          QuiltedGridTile(2, 1),
        ],
        repeatPattern: QuiltedGridRepeatPattern.inverted,
      ),
      itemCount: 50,
      itemBuilder: (context, index) {
        return Container(
          child: ClipRRect(
            child: CachedNetworkImage(
              imageUrl: "https://source.unsplash.com/random?sig=$index",
              placeholder: (context, url) => Container(
                width: 20,
                height: 20,
                alignment: Alignment.center,
                child: CircularProgressIndicator()
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
      
      },
    );
  }
}