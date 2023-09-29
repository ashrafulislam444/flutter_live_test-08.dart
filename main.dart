import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Live_Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? PortraitNewsFeed()
              : LandscapeNewsFeed();
        },
      ),
    );
  }
}

class PortraitNewsFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(5.0),
          child: Card(
            child: Image.network(
              'https://via.placeholder.com/150',
              width: 150,
              height: 150,
              fit: BoxFit.contain,
            ),
          ),
        );
      },
    );
  }
}

class LandscapeNewsFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(120.0),
          child: Card(
            child: Image.network(
              'https://via.placeholder.com/150',
              width: 150,
              height: 150,
              fit: BoxFit.contain,
            ),
          ),
        );
      },
    );
  }
}
