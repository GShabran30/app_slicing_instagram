import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String user;
  UserPost({required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // user profile
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.red[200],
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 10),
              Text(
                user,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.red[200],
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.favorite_border,
                    size: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Image(
                      image: AssetImage('images/chat.png'),
                      width: 22,
                      height: 22,
                    ),
                  ),
                  Image(
                    image: AssetImage('images/send.png'),
                    width: 22,
                    height: 22,
                  ),
                ],
              ),
              Icon(
                Icons.bookmark_outline,
                size: 25,
              )
            ],
          ),
        ),
        // likes
        const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Text("Liked by "),
              Text(
                "soggybread",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(" and "),
              Text(
                "others",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        //caption
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Text(
                user,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(" That's life, you should try it 😄"),
            ],
          ),
        ),
      ],
    );
  }
}
