import 'package:flutter/material.dart';

class PlayListTile extends StatelessWidget {
  const PlayListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, right: 20, left: 5),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xFF30314D),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "playlistpage");
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "images/Avengers.jpg",
                fit: BoxFit.cover,
                height: 60,
                width: 60,
              ),
            ),
          ),
          SizedBox(width: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "PlayList Name",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              // size between playlist name and total of song number
              SizedBox(height: 5),
              Text(
                "30 Songs",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.more_vert,
            color: Colors.white.withOpacity(0.6),
            size: 30,
          ),
        ],
      ),
    );
  }
}
