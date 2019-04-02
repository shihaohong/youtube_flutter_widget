import 'package:flutter/material.dart';

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
      body: ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemExtent: 20.0,
        itemBuilder: (BuildContext context, int index) {
          return YoutubeListItem(title: 'Hello World');
        },
      ),
    );
  }
}

class YoutubeListItem extends StatelessWidget {
  YoutubeListItem({
    this.image,
    this.user,
    this.views,
    this.title,
    this.duration,
  });

  String image;
  String user;
  int views;
  String title;
  Duration duration;

  @override
  Widget build(BuildContext context) {
    return Text(title);
  }
}