import 'package:flutter/material.dart';

import '../util/playlist_tile.dart';

class PlayList extends StatelessWidget {
  const PlayList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 10),
          PlayListTile(),
          PlayListTile(),
        ],
      ),
    );
  }
}
