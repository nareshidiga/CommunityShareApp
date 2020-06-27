import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@immutable
class ContainerWithCircle extends StatelessWidget {

  final double circleRadius;
  final double circleBorderWidth;
  final String iconUrl;

  ContainerWithCircle(this.iconUrl, this.circleRadius, this.circleBorderWidth);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: circleRadius,
      height: circleRadius,
      decoration:
      ShapeDecoration(shape: CircleBorder(), color: Colors.white),
      child: DecoratedBox(
        decoration: ShapeDecoration(
            shape: CircleBorder(),
            image: DecorationImage(
                fit: BoxFit.cover,
                image:AssetImage(iconUrl))),
      ),
    );
  }
}