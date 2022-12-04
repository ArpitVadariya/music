import 'package:flutter/material.dart';

import '../util/playlist_tile.dart';

class PlayList extends StatelessWidget {
  const PlayList({super.key});

  @override
  Widget build(BuildContext context) {
    // return SingleChildScrollView(
    //   child: Column(
    //     children: [
    //       SizedBox(height: 10),
    //       PlayListTile(),
    //       PlayListTile(),
    //     ],
    //   ),
    // );
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        // ignore: prefer_const_constructors
        child: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            PlayListTile(),
          ],
        ),
      ),
    );
  }
}
