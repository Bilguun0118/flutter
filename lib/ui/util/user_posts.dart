import 'package:cached_network_image/cached_network_image.dart';
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
          padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Profile photo
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: <Color>[
                          Color(0xffFBAA47),
                          Color(0xffD91A46),
                          Color(0xffA60F93),
                        ],
                        tileMode: TileMode.mirror,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(1.4),
                      child: Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              40), /////////////////////////////////////////////////////////adfpasdifas;lkdjfgpofdljg;alkjfsaldkjf;saldkjf;saldkjfs;lakd
                          child: CachedNetworkImage(
                            
                            imageUrl:
                                "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                            placeholder: (context, url) =>
                                CircularProgressIndicator(),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  // Name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Ulaanbaatar, Mongolia",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ],
              ),
              Icon(Icons.menu)
            ],
          ),
        ),
        // Post
        Container(
          height: 375,
          width: double.infinity,
          child: CachedNetworkImage(
            imageUrl:
                "https://images.unsplash.com/photo-1628126235206-5260b9ea6441?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
            placeholder: (context, url) => Container(
              width: 20,
              height: 20,
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            ),
            fit: BoxFit.cover,
          ),
          // color: Colors.green[300],
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
              Text("and "),
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
            overflow: TextOverflow.ellipsis,
              text: TextSpan(style: TextStyle(color: Colors.black), children: [
            TextSpan(text: name, style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    ' I turn the dirt they throwing into riches til im filthy hello world ')
          ])),
        ),

        SizedBox(height: 8),
        //view comments
        Padding(
          padding: EdgeInsets.only(left: 16, right: 10),
          child: Text(
            "View all 56 comments",
            style: TextStyle(
                color: Colors.grey[500],
                fontSize: 14,
                fontWeight: FontWeight.w300),
          ),
        ),

        SizedBox(height: 8),
        //comments me
        Padding(
            padding: EdgeInsets.only(left: 16, right: 10),
            child: Row(
              children: <Widget>[
                Container(
                  width: 28,
                  height: 28,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        14), /////////////////////////////////////////////////////////adfpasdifas;lkdjfgpofdljg;alkjfsaldkjf;saldkjf;saldkjfs;lakd
                    child: CachedNetworkImage(
                      imageUrl:
                          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Text(
                  "Add comment ...",
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ],
            )),

        SizedBox(height: 4),

        //post tawigdsan hugatsaa
        Padding(
          padding: EdgeInsets.only(left: 16, right: 10),
          child: Text(
            "20 hours ago",
            style: TextStyle(
                color: Colors.grey[500],
                fontSize: 10,
                fontWeight: FontWeight.w300),
          ),
        ),
      ],
    );
  }
}
