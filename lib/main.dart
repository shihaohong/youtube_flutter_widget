import 'package:flutter/material.dart';
import 'youtube_list_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Youtube List Items'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        itemExtent: 106.0,
        children: [
          YouTubeListItem(
            image: 'assets/custom_tile_item_thumbnail_one.jpg',
            user: 'Flutter',
            viewCount: 999000,
            title: 'The Flutter YouTube Channel',
          ),
          YouTubeListItem(
            image: 'assets/custom_tile_item_thumbnail_two.jpg',
            user: 'Dash',
            viewCount: 884000,
            title: 'Announcing Flutter 1.0',
          ),
        ],
      ),
    );
  }
}