import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_clone/widget/stories.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class InstgramMainPage extends StatefulWidget {
  const InstgramMainPage({super.key});

  @override
  State<InstgramMainPage> createState() => _InstgramMainPageState();
}

class _InstgramMainPageState extends State<InstgramMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Text(
            "Instagram",
            style: GoogleFonts.lobster(fontSize: 22, letterSpacing: 1),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.add_box_outlined),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.telegram_outlined),
            )
          ],
        ),
        body: Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Stories();
                  } else if (index == 1) {
                    return Divider();
                  } else
                    return Post();
                })),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.slow_motion_video_rounded), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ],
          backgroundColor: Colors.white,
        ));
  }
}

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(),
            title: Text("name"),
            trailing: Icon(Icons.more_vert),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            color: Colors.black38,
          ),
          ListTile(
            title: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Icon(
                    Icons.favorite_outline,
                    color: Colors.black,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Icon(Icons.comment_outlined, color: Colors.black)),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Icon(Icons.share_outlined, color: Colors.black)),
              ],
            ),
            trailing: Icon(Icons.bookmark_border, color: Colors.black),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
                "Caption this on instagram Hello every one my name is vikas",
                textAlign: TextAlign.left,
                style: GoogleFonts.cabin(
                    fontSize: 14, fontWeight: FontWeight.w400)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
                "#Instagram #Trending  #top #best #funny #IamwithNupurShrama",
                textAlign: TextAlign.left,
                style: GoogleFonts.cabin(
                    color: Color(0xFF0044FF),
                    fontSize: 13,
                    fontWeight: FontWeight.w500)),
          ),
          TextFormField(
            decoration: InputDecoration(
                label: Text("Add new Comment"), prefixIcon: Icon(Icons.person)),
          )
        ],
      ),
    );
  }
}
