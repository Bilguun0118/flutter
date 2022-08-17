import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BubbleStories extends StatelessWidget {
  // const BubbleStories({Key? key}) : super(key: key);

  final String names;

  BubbleStories({required this.names});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.only(right: 4, left: 4, top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 62,
                    height: 62,
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
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 3,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(54 / 2),
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://images.unsplash.com/photo-1553284965-fa61e9ad4795?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1742&q=80",
                            placeholder: (context, url) =>
                                CircularProgressIndicator(),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    width: 80,
                    child: Text(
                      names,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            );
  }
}
