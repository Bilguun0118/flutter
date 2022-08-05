import 'package:flutter/material.dart';
import 'package:instagram_f/ui/util/account_post.dart';
import 'package:instagram_f/ui/util/account_tag.dart';
import 'package:instagram_f/ui/util/account_video.dart';
import 'package:instagram_f/ui/util/bubble_stories.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              top: 88.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Profile picture
                Container(
                  height: 86,
                  width: 86,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    shape: BoxShape.circle,
                  ),
                ),

                //Number of posts, followers, following
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            '120',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                          Text("Posts"),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '340',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                          Text("Followers"),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '430',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                          Text("Following"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Name and bio

          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jackie',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    'I create apps & video rgame',
                  ),
                ),
                Text(
                  'm.youtube.com/jeckie/',
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      child: Center(child: Text("Add tools")),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      child: Center(child: Text("Insights")),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      child: Center(child: Text("Add shop")),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Stories history
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: Row(children: [
              BubbleStories(text: "Story 1"),
              BubbleStories(text: "Story 2"),
              BubbleStories(text: "Story 3"),
              BubbleStories(text: "Story 4"),
              BubbleStories(text: "Story 5"),
            ]),
          ),

          //Tavbar Icons
          TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.grid_3x3_outlined),
              ),
              Tab(
                icon: Icon(Icons.video_call),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
            ],
          ),

          //Post, Video and Tag
          Expanded(
              child: TabBarView(
            children: [
              AccountPost(),
              AccountVideo(),
              AccountTag(),
            ],
          ))
        ],
      )),
    );
  }
}
