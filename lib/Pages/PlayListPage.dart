import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music/util/music_tile.dart';

class PlayListPage extends StatelessWidget {
  const PlayListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // this decoration is for background color
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFF303151).withOpacity(0.6),
          Color(0xFF303151).withOpacity(0.9),
        ],
      )),
      // this Scaffold is main screen of PlayListPage that we see in app
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  // this row is for buttons
                  // back and three dits (details)
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          CupertinoIcons.back,
                          color: Color(0xFF899CCF),
                          size: 30,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.more_vert,
                          color: Color(0xFF899CCF),
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                // this ClipRRect for PlayList Image here we set default image for all PlayList
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "images/Avengers.jpg",
                    width: 250,
                    height: 260,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),
                // this column is for display two texts PlayList Name and PlayList Length(total list of songs)
                Column(
                  children: [
                    Text(
                      "PlayList Name",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "List Length",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                // this row is for two button playall and shuffle with icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 170,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "PlayAll",
                              style: TextStyle(
                                color: Color(0xFF30314D),
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.play_arrow_rounded,
                              color: Color(0xFF30314D),
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 170,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Color(0xFF30314D),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Shuffle",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 21,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.shuffle,
                              color: Colors.white,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // now all song listed
                MusicTile(),
                MusicTile(),
                MusicTile(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
