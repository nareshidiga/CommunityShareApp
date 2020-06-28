import 'package:communitymarketplace/models/needs.dart';
import 'package:communitymarketplace/widgets/circle_container.dart';
import 'package:flutter/material.dart';

import '../values/values.dart';
import '../utils/constants.dart' as Constants;
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
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _offeredSupport = false;
  NeedDetailsScreenState(this.index);

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
                      ContainerWithCircle(needs[index].userIcon, 50.0, 1.0),
                      SizedBox(width: 10,),
                      Text( needs[index].user, maxLines: 3,),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text( 'Description', maxLines: 3, style: Theme.of(context).textTheme.headline6 ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
                  Text( needs[index].description, maxLines: 3, style: Theme.of(context).textTheme.bodyText2),
                  SizedBox(height: 20), //TODO Needs to decide which icons looks better
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          ClipOval(
                            child: Material(
                              color: AppColors.seaBlue1,
                              child: InkWell(
                                splashColor: AppColors.orangeShade5,
                                child: SizedBox(width: Sizes.WIDTH_50, height: Sizes.HEIGHT_50, child: Icon(Icons.message, color: AppColors.white,)),
                                onTap: () {},
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text( 'Message', maxLines: Constants.DESC_MAX_LINES, style: Theme.of(context).textTheme.bodyText1),
                        ],
                      ),
                      Column(
                        children: [
                          ClipOval(
                            child: Material(
                              color: AppColors.seaBlue1,
                              child: InkWell(
                                splashColor: AppColors.orangeShade5,
                                child: SizedBox(width: Sizes.WIDTH_50, height: Sizes.HEIGHT_50, child: Icon(Icons.call, color: AppColors.white)),
                                onTap: () {},
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text( 'Call', maxLines: Constants.DESC_MAX_LINES, style: Theme.of(context).textTheme.bodyText1),
                        ],
                      ),
                      Column(
                        children: [
                          ClipOval(
                            child: Material(
                              color: needs[index].accepted? AppColors.green : AppColors.seaBlue1,
                              child: InkWell(
                                splashColor: AppColors.orangeShade5,
                                child: SizedBox(width: Sizes.WIDTH_50, height: Sizes.HEIGHT_50, child: Icon(Icons.local_offer, color: needs[index].accepted ? AppColors.greyShade3  : AppColors.white, semanticLabel:'Accept offer' /*Accessibility feature needs to highlight this*/)),
                                onTap: () {
                                  final snackBar = SnackBar(content: Text('Offer Support Successful!'));
                                  // Find the Scaffold in the widget tree and use it to show a SnackBar.
                                  _scaffoldKey.currentState.showSnackBar(snackBar);
                                  setState(()
                                  {
                                    needs[index].accepted = true;
                                    _offeredSupport = needs[index].accepted;
                                  });
                                 },
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text( needs[index].accepted ?  'Support Offered' : 'Offer Support', maxLines: Constants.DESC_MAX_LINES, style: Theme.of(context).textTheme.bodyText1),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20,),//TODO Row end this is sample block to decied which patter icon should follow
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }


}
