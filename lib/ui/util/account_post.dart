import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class AccountPost extends StatelessWidget {
  const AccountPost({Key? key}) : super(key: key);

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
      padding: EdgeInsets.zero,
      gridDelegate: SliverQuiltedGridDelegate(
        crossAxisCount: 3,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        // repeatPattern: QuiltedGridRepeatPattern.inverted,
        pattern: const [
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
        ],
        repeatPattern: QuiltedGridRepeatPattern.inverted,
      ),
      itemCount: 100,
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
        
        // return ClipRRect(
        //   borderRadius: BorderRadius.circular(10),
        //   child: Image.network("https://source.unsplash.com/random?sig=$index"),
        // );
      },
    );
  }
}