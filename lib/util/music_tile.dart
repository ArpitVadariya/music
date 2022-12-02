import 'package:flutter/material.dart';

class MusicTile extends StatelessWidget {
  const MusicTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15, right: 15, left: 5),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        color: Color(0xFF303114D),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          // we can set image here like real apps
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "images/Avengers.jpg",
              fit: BoxFit.cover,
              height: 40,
              width: 40,
            ),
          ),
          // it is size between image and song detail(like name artist length)
          SizedBox(width: 15),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "musicpage");
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Song Name",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Artist",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "-",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "length",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Spacer() method is used to keep space between name and play button icon
          Spacer(),
          // this container is for play button effect
          Container(
            // this icon is for triangle inside circle
            child: Icon(
              Icons.play_circle,
              size: 50,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
