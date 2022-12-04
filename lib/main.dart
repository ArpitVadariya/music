import 'package:flutter/material.dart';
import 'package:music/Pages/MusicPage.dart';
import 'package:music/home_page.dart';
import 'package:music/widgets/PlayList.dart';
import 'Pages/HomePage.dart';
import 'Pages/PlayListPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      // home: Home(),
      routes: {
        "/": (context) => HomePage(),
        "playlistpage": (context) => PlayListPage(),
        "musicpage": (context) => MusicPage(),
      },
    );
  }
}
