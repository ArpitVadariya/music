import 'package:flutter/material.dart';

class MusicTilee extends StatelessWidget {
  const MusicTilee({
    super.key,
    required this.title,
    required this.subtitle,
    required this.album,
    this.leading,
    required this.name,
  });

  // const MusicTilee({super.key});

  final Widget? leading;
  final String title;
  final String? subtitle;
  final String album;
  final String name;

  String getTitle(title) {
    return title;
  }

  String getName(name) {
    return name;
  }

  String printName(name) {
    // total 23 length print
    if (name.length > 20) {
      return name.toString().substring(0, 19) + '...';
    }
    return name;
  }

  String getSubTitle(subtitle) {
    return subtitle;
  }

  String printSubTitle(subtitle) {
    // total 26 length print
    if (subtitle.length > 23) {
      return subtitle.toString().substring(0, 22) + '...';
    }
    return subtitle;
  }

  String getAlbum(album) {
    return album;
  }

  Widget? getLeading(leadinng) {
    return leading;
  }

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
          SizedBox(
            child: getLeading(leading),
            height: 35,
            width: 35,
          ),
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(10),
          //   child: Image.asset(
          //     "images/Avengers.jpg",
          //     fit: BoxFit.cover,
          //     height: 40,
          //     width: 40,
          //   ),
          // ),
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
                  // "123456789012345678901234",
                  printName(name),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      // "12345678901234567890123456",
                      printSubTitle(subtitle),
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 16,
                      ),
                    ),
                    // SizedBox(width: 5),
                    // Text(
                    //   "-",
                    //   style: TextStyle(
                    //     color: Colors.white.withOpacity(0.6),
                    //     fontSize: 25,
                    //   ),
                    // ),
                    // SizedBox(width: 5),
                    // Text(
                    //   // "length",
                    //   getAlbum(album),
                    //   style: TextStyle(
                    //     color: Colors.white.withOpacity(0.6),
                    //     fontWeight: FontWeight.w500,
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
          // // Spacer() method is used to keep space between name and play button icon
          Spacer(),
          // this container is for play button effect
          Container(
            // this icon is for triangle inside circle
            child: Icon(
              Icons.play_circle,
              size: 40,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
