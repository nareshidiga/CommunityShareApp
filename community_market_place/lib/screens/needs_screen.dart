import 'package:flutter/material.dart';

class Needs extends StatefulWidget {
  @override
  _NeedsState createState() => _NeedsState();
}

class _NeedsState extends State<Needs> {
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: 200,
        child: Image(image: AssetImage('images/pic1.jpg')));
  }
}
