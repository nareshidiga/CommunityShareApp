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
  OfferDetailsScreenState(this.index);

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
                      ContainerWithCircle(offers[index].userIcon, Sizes.RADIUS_100, Sizes.RADIUS_0),
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
                      ClipOval(
                        child: Material(
                          color: AppColors.seaBlue1,
                          child: InkWell(
                            splashColor: AppColors.orangeShade5,
                            child: SizedBox(width: Sizes.WIDTH_50, height: Sizes.HEIGHT_50, child: Icon(Icons.local_offer, color: AppColors.white, semanticLabel:'Accept offer' /*Accessibility feature needs to highlight this*/)),
                            onTap: () {/*accept offer code */},
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}


