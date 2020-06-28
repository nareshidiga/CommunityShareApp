import 'package:communitymarketplace/models/myposts.dart';
import 'package:communitymarketplace/models/offers.dart';
import 'package:communitymarketplace/widgets/circle_container.dart';
import 'package:flutter/material.dart';

import '../values/values.dart';
import '../utils/constants.dart' as Constants;

class MyPostsDetailsScreen extends StatefulWidget {
  MyPostsDetailsScreen({this.index});
  final int index;

  @override
  State<StatefulWidget> createState() {
    return MyPostsDetailsScreenState(index);
  }


}

class MyPostsDetailsScreenState extends State<MyPostsDetailsScreen> {
  int index = 0;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _offeredSupport = false;
  MyPostsDetailsScreenState(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("My Community"),
      ),

      body: SingleChildScrollView(
        child: Column (
          //mainAxisAlignment: c.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(width: double.infinity, height: 250, image: AssetImage(posts[index].imageUrl), fit: BoxFit.fitWidth),
            SizedBox(height: Sizes.HEIGHT_10),

            Padding(
              padding: const EdgeInsets.all(Sizes.PADDING_10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text( posts[index].title, maxLines: Constants.DESC_MAX_LINES, style: Theme.of(context).textTheme.headline6 ),
                  SizedBox(height: Sizes.HEIGHT_10),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          posts[index].isNeed ? 'NEED' : 'OFFER',
                          style: const TextStyle(fontSize: 14.0, color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                          child: Text('Posted on ' + posts[index].date + '     ' + '${posts[index].viewCount} views', style: Theme.of(context).textTheme.bodyText2  )),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
                  SizedBox(height: Sizes.HEIGHT_10),
                  Text( 'Description', maxLines: Constants.DESC_MAX_LINES, style: Theme.of(context).textTheme.headline6 ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: Sizes.PADDING_2)),
                  Text( posts[index].description, maxLines: Constants.DESC_MAX_LINES, style: Theme.of(context).textTheme.bodyText2),
                  SizedBox(height: 20),
                  Text( 'Responses', maxLines: Constants.DESC_MAX_LINES, style: Theme.of(context).textTheme.headline6 ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: Sizes.PADDING_2)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ContainerWithCircle(posts[index].userIcon, 40, Sizes.RADIUS_0),
                      SizedBox(width: Sizes.WIDTH_10,),
                      Text( posts[index].user, maxLines: Constants.DESC_MAX_LINES),
                    ]
                  ),
                  SizedBox(height: Sizes.HEIGHT_10),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ContainerWithCircle(posts[index].userIcon, 40, Sizes.RADIUS_0),
                        SizedBox(width: Sizes.WIDTH_10,),
                        Text( posts[index].user, maxLines: Constants.DESC_MAX_LINES),
                      ]
                  ),
                  SizedBox(height: Sizes.HEIGHT_20),
                  SizedBox(height:20),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}


