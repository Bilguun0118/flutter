import 'package:cached_network_image/cached_network_image.dart';
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
              top: 50.0,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Jackie_Chan",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_down_outlined)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                          Icon(Icons.add, size: 30,),
                          Icon(Icons.menu, size: 30,),
                        ]),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Profile picture
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 96,
                          height: 96,
                          decoration: const BoxDecoration(
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
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              width: 86,
                              height: 86,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 3,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(86 / 2),
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
                      ],
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
              ],
            ),
          ),

          // Name and bio

          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Jackie Chan',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    'Digital goodies designer @pixsellz',
                  ),
                ),
                Text(
                  'Everytihng is designed.',
                )
              ],
            ),
          ),

          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text(
                  "Edit Profile",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                )),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),

          // Stories history
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: "Mongolia".length,
                itemBuilder: (context, index) {
                  return BubbleStories(names: "Mongolia"[index]);
                },
              ),
            ),
          ),

          //Tavbar Icons
          Container(
            decoration: BoxDecoration(
                border: Border(
              top: BorderSide(
                color: Color(0xffbcbcbe),
              ),
            )),
            child: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.grid_3x3_outlined,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(Icons.video_call, color: Colors.black),
                ),
                Tab(
                  icon: Icon(Icons.person, color: Colors.black),
                ),
              ],
            ),
          ),

          //Post, Video and Tag
          const Expanded(
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
