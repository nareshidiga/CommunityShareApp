import 'package:communitymarketplace/models/needs.dart';
import 'package:communitymarketplace/widgets/circle_container.dart';
import 'package:flutter/material.dart';

import '../values/values.dart';
import 'needs_screen.dart';

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

      body: SingleChildScrollView(
        child: Column (
        //mainAxisAlignment: c.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(width: double.infinity, height: 250, image: AssetImage(needs[index].imageUrl), fit: BoxFit.fitWidth),
            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.all(Sizes.PADDING_10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text( needs[index].title, maxLines: 3, style: Theme.of(context).textTheme.headline6 ),
                  SizedBox(height: 10),
                  Text('Posted on ' + needs[index].date + '     ' + '${needs[index].viewCount} views', style: Theme.of(context).textTheme.bodyText2  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: Sizes.PADDING_2)),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ContainerWithCircle(needs[index].userIcon, 100.0, 1.0),
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
                  ),
                  SizedBox(height: 20), //TODO Needs to decide which icons looks better
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                       Container(
                        height: Sizes.HEIGHT_50,
                        width: Sizes.WIDTH_50,
                        child: RaisedButton(
                          padding: const EdgeInsets.all(Sizes.PADDING_0),
                          elevation: Sizes.ELEVATION_8,
                          onPressed: () {

                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(Sizes.RADIUS_30),
                          ),
                          child: Ink(
                            height: Sizes.HEIGHT_50,
                            width: Sizes.WIDTH_50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Sizes.RADIUS_30),
                              gradient: Gradients.buttonGradient,
                            ),
                            child: Icon(
                              Icons.message,
                              size: Sizes.ICON_SIZE_30,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                       Container(
                        height: Sizes.HEIGHT_50,
                        width: Sizes.WIDTH_50,
                        child: RaisedButton(
                          padding: const EdgeInsets.all(Sizes.PADDING_0),
                          elevation: Sizes.ELEVATION_8,
                          onPressed: () {
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(Sizes.RADIUS_30),
                          ),
                          child: Ink(
                            height: Sizes.HEIGHT_50,
                            width: Sizes.WIDTH_50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Sizes.RADIUS_30),
                              gradient: Gradients.buttonGradient,
                            ),
                            child: Icon(
                              Icons.call,
                              size: Sizes.ICON_SIZE_30,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )    //TODO Row end this is sample block to decied which patter icon should follow
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }


}
