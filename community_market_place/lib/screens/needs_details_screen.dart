import 'package:communitymarketplace/models/needs.dart';
import 'package:flutter/material.dart';

import '../values/values.dart';
import 'needs_screen.dart';

class ContainerWithCircle extends StatelessWidget {
  final double circleRadius = 100.0;
  final double circleBorderWidth = 0;
  final String iconUrl;
  ContainerWithCircle(this.iconUrl);
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





class NeedDetailsScreen extends StatefulWidget {
  NeedDetailsScreen({this.index});
  int index;

  @override
  State<StatefulWidget> createState() {
    return NeedDetailsScreenState(index);
  }


}

class NeedDetailsScreenState extends State<NeedDetailsScreen> {
  int index = 0;
  NeedDetailsScreenState(this.index);
/*
  static List<Widget> _widgetOptions = <Widget>[Needs(), Offers(), MyPosts()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
*/


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Community"),
      ),
      body: Column (
      //mainAxisAlignment: c.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(width: double.infinity, height: 250, image: AssetImage(needs[index].imageUrl), fit: BoxFit.fitWidth),
          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text( needs[index].title, maxLines: 3, style: Theme.of(context).textTheme.headline6 ),
                SizedBox(height: 10),
                Text('Posted on ' + needs[index].date + '     ' + '${needs[index].viewCount} views', style: Theme.of(context).textTheme.bodyText2  ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ContainerWithCircle(needs[index].userIcon),
                    SizedBox(width: 10,),
                    Text( needs[index].user, maxLines: 3,),
                  ],
                ),
                SizedBox(height: 20),
                Text( 'Description', maxLines: 3, style: Theme.of(context).textTheme.headline6 ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
                Text( needs[index].description, maxLines: 3, style: Theme.of(context).textTheme.bodyText2),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      onPressed: () { },
                    color: AppColors.seaBlue1,
                      elevation: Sizes.ELEVATION_6,
                      shape: CircleBorder(),
                       child: Icon(Icons.message)
                    ),
                    RaisedButton(
                        onPressed: () { },
                        color: AppColors.greenShade1,
                        elevation: Sizes.ELEVATION_6,
                        shape: CircleBorder(),
                        child: Icon(Icons.call)
                    ),
                  ],
                )
              ],
            ),
          ),

        ],
      ),
    );
  }


}
