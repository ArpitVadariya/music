import 'dart:ui';

import 'package:flutter/material.dart';

import '../util/music_tile.dart';

class MusicList extends StatelessWidget {
  const MusicList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 10),
          MusicTile(),
          MusicTile(),
        ],
      ),
    );
  }
}
