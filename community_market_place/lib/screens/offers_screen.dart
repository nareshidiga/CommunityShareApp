
import 'package:communitymarketplace/models/offers.dart';
import 'package:communitymarketplace/screens/needs_details_screen.dart';
import 'package:communitymarketplace/screens/offers_details_screen.dart';
import 'package:flutter/material.dart';

class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  Widget build(BuildContext context) {
   return GridView.builder(
       shrinkWrap: true,
       itemCount: offers.length,
       gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
         maxCrossAxisExtent: 300, childAspectRatio: 4/ 2),

       itemBuilder: (BuildContext context, int index) {
         Offer offer = offers[index];
         return OfferListItem(
           tap: () {
             Navigator.push(
               context, MaterialPageRoute(
               builder: (context) => OfferDetailsScreen(index: index)
             )
             );
           },
           thumbnail: Container(
             margin: EdgeInsets.only(left: 5, right: 5),
             height: 100,
             child: Image(
               image: AssetImage(offer.imageUrl), fit: BoxFit.cover)),
           title: offer.title,
           user: offer.user,
           date: offer.date,
           viewCount: offer.viewCount
         );
       }
   );
  }
}

class OfferListItem extends StatelessWidget {
  const OfferListItem({
    this.thumbnail,
    this.title,
    this.user,
    this.date,
    this.viewCount,
    this.tap,
  });

  final Widget thumbnail;
  final String title;
  final String user;
  final String date;
  final int viewCount;
  final GestureTapCallback tap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(6.0))),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: thumbnail,
              ),
              Expanded(
                flex: 2,
                child: _OfferPostDescription(
                  title: title,
                  user: user,
                  date: date,
                  viewCount: viewCount,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OfferPostDescription extends StatelessWidget {
  const _OfferPostDescription({
    Key key,
    this.title,
    this.user,
    this.date,
    this.viewCount,
  }) : super(key: key);

  final String title;
  final String user;
  final String date;
  final int viewCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            maxLines: 3,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            user,
            style: const TextStyle(fontSize: 10.0),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
          Text(
            date + '     ' + '$viewCount views',
            style: const TextStyle(fontSize: 10.0),
          ),
/*          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
          Text(
            '$viewCount views',
            style: const TextStyle(fontSize: 10.0),
          ),*/
        ],
      ),
    );
  }
}
