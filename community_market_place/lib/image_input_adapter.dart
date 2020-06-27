import 'dart:io';

import 'package:flutter/material.dart';

class ImageInputAdapter {
  /// Initialize from either a URL or a file, but not both.
  ImageInputAdapter({this.file, this.url})
      : assert(file != null || url != null),
        assert(file != null && url == null),
        assert(file == null && url != null);

  /// An image file
  final File file;

  /// A direct link to the remote image
  final String url;

  /// Render the image from a file or from a remote source.
  Widget widgetize() {
    if (file != null) {
      return Image.file(file);
    } else {
      return FadeInImage(
        image: NetworkImage(url),
        placeholder: AssetImage("assets/images/placeholder.png"),
        fit: BoxFit.contain,
      );
    }
  }
}
