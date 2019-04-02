import 'package:flutter/material.dart';

class _VideoDescription extends StatelessWidget {
  _VideoDescription({
    Key key,
    this.title,
    this.user,
    this.viewCount,
  }) : super(key: key);

  final String title;
  final String user;
  final int viewCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(user, style: TextStyle(fontSize: 10.0)),
          Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
          Text('$viewCount views', style: TextStyle(fontSize: 10.0),
          ),
        ],
      ),
    );
  }
}

class YoutubeListItem extends StatelessWidget {
  YoutubeListItem({
    this.imageUrl,
    this.user,
    this.viewCount,
    this.title,
  });

  final String imageUrl;
  final String user;
  final int viewCount;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Image.network(imageUrl),
            flex: 2,
          ),
          Expanded(
            child: _VideoDescription(
              title: title, user: user, viewCount: viewCount,
            ),
            flex: 3,
          ),
          Icon(Icons.more_vert, size: 16.0),
        ],
      ),
    );
  }
}
