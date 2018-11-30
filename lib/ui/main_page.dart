import 'package:flutter/material.dart';
import 'package:mdc101/ui/diagonal_clipper.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);
  @override
  _MainPageState createState() => new _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _imageHeight = 256.0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          _buildImage(),
          _buildTopHeadder(),
          _buildProfileRow(),
          _buildBottomPart()
        ],
      ),
    );
  }

  Widget _buildImage() {
    return new ClipPath(
      clipper: new DiagonalClipper(),
      child: new Image.asset('assets/bg.jpeg',
          fit: BoxFit.fitHeight,
          height: _imageHeight,
          colorBlendMode: BlendMode.srcOver,
          color: new Color.fromARGB(120, 20, 10, 40)),
    );
  }

  Widget _buildTopHeadder() {
    return new Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 32.0),
      child: new Row(
        children: <Widget>[
          new Icon(Icons.menu, size: 32.0, color: Colors.white),
          new Expanded(
            child: new Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: new Text(
                "Skills",
                style: new TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
          new Icon(
            Icons.linear_scale,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Widget _buildProfileRow() {
    return new Padding(
      padding: new EdgeInsets.only(left: 16.0, top: _imageHeight / 2.5),
      child: new Row(
        children: <Widget>[
          new CircleAvatar(
            minRadius: 28.0,
            maxRadius: 28.0,
            backgroundImage: new AssetImage('assets/me.jpg'),
          ),
          new Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Text('Mohammed Lazhari',
                    style: new TextStyle(
                        fontSize: 26.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w400)),
                new Text('Full Stack Developer',
                    style: new TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        fontSize: 14.0))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBottomPart() {
    return new Padding(
        padding: new EdgeInsets.only(top: _imageHeight),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildMyExperiencesHeader(),
            _buildExperiencesList()
          ],
        ));
  }

  //TODO: Build Experience List
  Widget _buildExperiencesList() {
    return new Container();
  }

  Widget _buildMyExperiencesHeader() {
    return new Padding(
        padding: new EdgeInsets.only(left: 64.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(
              'My Experciens',
              style: new TextStyle(fontSize: 34.0),
            ),
            new Text('As a Full Stack Developer',
                style: new TextStyle(color: Colors.grey, fontSize: 12.0))
          ],
        ));
  }

  Widget _buildTimeline() {
    return new Positioned(
      top: 0.0,
      bottom: 0.0,
      left: 32.0,
      child: new Container(width: 1.0, color: Colors.grey[300]),
    );
  }
}
