import 'package:communitymarketplace/models/offers.dart';
import 'package:communitymarketplace/widgets/circle_container.dart';
import 'package:flutter/material.dart';

import '../values/values.dart';
import '../utils/constants.dart' as Constants;

class OfferDetailsScreen extends StatefulWidget {
  OfferDetailsScreen({this.index});
  final int index;

  @override
  State<StatefulWidget> createState() {
    return OfferDetailsScreenState(index);
  }


}

class OfferDetailsScreenState extends State<OfferDetailsScreen> {
  int index = 0;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _offeredSupport = false;
  OfferDetailsScreenState(this.index);

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
            Image(width: double.infinity, height: 250, image: AssetImage(offers[index].imageUrl), fit: BoxFit.fitWidth),
            SizedBox(height: Sizes.HEIGHT_10),

            Padding(
              padding: const EdgeInsets.all(Sizes.PADDING_10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text( offers[index].title, maxLines: Constants.DESC_MAX_LINES, style: Theme.of(context).textTheme.headline6 ),
                  SizedBox(height: Sizes.HEIGHT_10),
                  Text('Posted on ' + offers[index].date + '     ' + '${offers[index].viewCount} views', style: Theme.of(context).textTheme.bodyText2  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
                  SizedBox(height: Sizes.HEIGHT_10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ContainerWithCircle(offers[index].userIcon, 50, Sizes.RADIUS_0),
                      SizedBox(width: Sizes.WIDTH_10,),
                      Text( offers[index].user, maxLines: Constants.DESC_MAX_LINES)
                    ]
                  ),
                  SizedBox(height: Sizes.HEIGHT_10),
                  Text( 'Description', maxLines: Constants.DESC_MAX_LINES, style: Theme.of(context).textTheme.headline6 ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: Sizes.PADDING_2)),
                  Text( offers[index].description, maxLines: Constants.DESC_MAX_LINES, style: Theme.of(context).textTheme.bodyText2),
                  SizedBox(height: Sizes.HEIGHT_20),
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
                              color: offers[index].accepted ? AppColors.green : AppColors.seaBlue1,
                              child: InkWell(
                                splashColor: AppColors.orangeShade5,
                                child: SizedBox(width: Sizes.WIDTH_50, height: Sizes.HEIGHT_50, child: Icon(Icons.local_offer, color: offers[index].accepted? AppColors.greyShade3  : AppColors.white, semanticLabel:'Accept offer' /*Accessibility feature needs to highlight this*/)),
                                onTap: () {
                                  final snackBar = SnackBar(content: Text('Accept Offer Successful!'));
                                  // Find the Scaffold in the widget tree and use it to show a SnackBar.
                                  _scaffoldKey.currentState.showSnackBar(snackBar);
                                  setState(()
                                  {

                                    offers[index].accepted = true;
                                    _offeredSupport = offers[index].accepted;
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(offers[index].accepted ?  'Offer accepted' : 'Accept Offer' , maxLines: Constants.DESC_MAX_LINES, style: Theme.of(context).textTheme.bodyText1),
                        ],
                      )
                    ],
                  ),
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


