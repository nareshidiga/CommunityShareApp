
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:communitymarketplace/models/offers.dart';
import 'package:communitymarketplace/screens/offers_details_screen.dart';
import 'package:communitymarketplace/values/values.dart';
import 'package:flutter/material.dart';

class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  int _current = 0;
  CarouselController buttonCarouselController = CarouselController();

  Widget build(BuildContext context) {
   return Column(
     crossAxisAlignment: CrossAxisAlignment.center,
     children: [
       Column(
           children: <Widget>[
             SizedBox(height: 10,),
             CarouselSlider.builder(
               itemCount: 5,
               carouselController: buttonCarouselController,
               options: CarouselOptions(
                 autoPlay: false,
                 //autoPlayAnimationDuration: Duration(microseconds: 10),
                 enlargeCenterPage: true,
                 viewportFraction: 0.9,
                 aspectRatio: 3.0,
                 initialPage: 1,
                 onPageChanged: (index, reason) {
                   setState(() {
                     _current = index;
                   });
                 },
                 //
               ),
               itemBuilder: (BuildContext context, int index) {
                 Offer offer = offers[index];
                 return Stack(
                   alignment: Alignment.bottomCenter,
                   children: [

                     Container(
                       child: OfferListItem(
                           tap: () {
                             Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                     builder: (context) => OfferDetailsScreen(index: index)));
                           },
                           user: offer.user,
                           title: offer.title,
                           date: offer.date,
                           viewCount: offer.viewCount,
                           thumbnail: Container(
                               margin: EdgeInsets.only(left: 5, right: 5),
                               height: 100,
                               child: Image(
                                   image: AssetImage(offer.imageUrl), fit: BoxFit.cover))),
                     ),
                     Container(
                       height: 30,
                       //width: ,
                       child: ListView.builder(
                           shrinkWrap: true,
                           itemCount: 5,
                           scrollDirection: Axis.horizontal,
                           itemBuilder: (BuildContext context, int index) {
                             return  Container(
                               width: 8.0,
                               height: 8.0,
                               margin: EdgeInsets.symmetric(vertical: 1.0, horizontal: 1.0),
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 color: _current == index
                                     ? Theme.of(context).primaryColor
                                     : Color.fromRGBO(0, 0, 0, 0.4),
                               ),
                             );
                           }),
                     )

                   ],
                 );
               },
             ),
             SizedBox(height: 10,)
           ]
       ),
       Expanded(
         child: GridView.builder(
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
         ),
       ),
     ],
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
