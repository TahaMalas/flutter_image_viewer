import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ImageViewer {
  static const MethodChannel _channel = const MethodChannel('image_viewer');

  static Future<void> showImageSlider({
    @required List<String> images,
    int startingPosition = 0,
  }) async {
    try {
      List<String> imagesList = List();
      images.forEach((image) => imagesList.add(image));
      await _channel.invokeMethod(
        'showImageViewer',
        {
          "list": imagesList,
          "position": startingPosition,
        },
      );
    } on PlatformException catch (e) {
      print(e.message);
    }
  }
}
