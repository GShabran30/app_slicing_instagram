// ignore_for_file: use_key_in_widget_constructors
import 'package:app_slicing_instagram/Widget/post.dart';
import 'package:app_slicing_instagram/Widget/storyBubbles.dart';
import 'package:flutter/material.dart';

class UserHome extends StatelessWidget {
  final List user = [
    "rey_clearwater",
    "soggybread",
    "forrestknight",
    "draxalkinson",
    "gordonream"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Instagram",
                style: TextStyle(color: Colors.black),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(Icons.favorite_border),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(
                      'images/message.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: user.length,
                itemBuilder: (context, index) {
                  return StoryBubbles(text: user[index]);
                },
              ),
            ),
            //asdasd
            Expanded(
              child: ListView.builder(
                itemCount: user.length,
                itemBuilder: (context, index) {
                  return UserPost(user: user[index]);
                },
              ),
            )
          ],
        ));
  }
}
