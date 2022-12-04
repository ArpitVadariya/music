import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
// for MusicTile()
import 'package:music/util/music_tile.dart';
// for MusicTilee()
import 'package:music/util/other_tile.dart';
import 'package:on_audio_query/on_audio_query.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  // final String title;
  // const Home({super.key, required this.title});
  // final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // define audio plugin
  final OnAudioQuery _audioQuery = OnAudioQuery();

  // request permisiion from init state method
  @override
  void initState() {
    super.initState();
    requestStoragePermisiion();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" "),
      ),
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
                  // return MusicTile(
                  //   name: item.data![index].displayNameWOExt,
                  //   title: item.data![index].title,
                  //   subtitle: item.data![index].artist,
                  //   album: (item.data![index].album).toString(),
                  //   leading: QueryArtworkWidget(
                  //     id: item.data![index].id,
                  //     type: ArtworkType.AUDIO,
                  //   ),
                  // );
                  // // return ListTile();
                  return ListTile(
                    title: Text(item.data![index].title),
                    subtitle: Text(item.data![index].displayName),
                    trailing: const Icon(Icons.more_vert),
                    leading: QueryArtworkWidget(
                        id: item.data![index].id, type: ArtworkType.AUDIO),
                  );
                });
          }),
    );
  }

  void requestStoragePermisiion() async {
    if (!kIsWeb) {
      bool permissionStatus = await _audioQuery.permissionsStatus();
      if (!permissionStatus) {
        await _audioQuery.permissionsRequest();
      }

      setState(() {});
    }
  }
}
