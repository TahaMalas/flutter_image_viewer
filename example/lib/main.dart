import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:image_viewer/image_viewer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ImageViewer example app'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              ImageViewer.showImageSlider(
                images: [
                  'https://cdn.eso.org/images/thumb300y/eso1907a.jpg',
                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg',
                  'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
                ],
                startingPosition: 1,
              );
            },
            child: Text('Show slider'),
          ),
        ),
      ),
    );
  }
}
