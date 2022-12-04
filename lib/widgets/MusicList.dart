import 'package:flutter/material.dart';
import 'package:music/home_page.dart';
import 'package:on_audio_query/on_audio_query.dart';
import '../util/music_tile.dart';

class MusicList extends StatelessWidget {
  MusicList({super.key});

  final OnAudioQuery _audioQuery = OnAudioQuery();

  @override
  Widget build(BuildContext context) {
    // return SingleChildScrollView(
    //   child: Column(
    //     children: [
    //       SizedBox(height: 10),
    //       MusicTile(),
    //       MusicTile(),
    //     ],
    //   ),
    // );
    return Scaffold(
      backgroundColor: Colors.transparent,
      // appBar: AppBar(
      //   title: Text(" "),
      // ),
      body: FutureBuilder<List<SongModel>>(
          future: _audioQuery.querySongs(
            sortType: null,
            orderType: OrderType.ASC_OR_SMALLER,
            uriType: UriType.EXTERNAL,
            ignoreCase: true,
          ),
          builder: (context, item) {
            // if item null
            if (item.data == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (item.data!.isEmpty) {
              return const Center(
                child: Text("Nathi Ela Geet"),
              );
            }

            return ListView.builder(
                itemCount: item.data!.length,
                itemBuilder: (context, index) {
                  return MusicTile(
                    name: item.data![index].displayNameWOExt,
                    title: item.data![index].title,
                    subtitle: item.data![index].artist,
                    album: (item.data![index].album).toString(),
                    leading: QueryArtworkWidget(
                      id: item.data![index].id,
                      type: ArtworkType.AUDIO,
                    ),
                  );
                });
          }),
    );
  }
}
