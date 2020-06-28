import 'package:carousel_slider/carousel_slider.dart';
import 'package:communitymarketplace/models/needs.dart';
import 'package:communitymarketplace/values/values.dart';
import 'package:flutter/material.dart';

import 'needs_details_screen.dart';

class _PostDescription extends StatelessWidget {
  const _PostDescription({
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

class NeedListItem extends StatelessWidget {
  const NeedListItem({
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
                child: _PostDescription(
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

class Needs extends StatefulWidget {
  @override
  _NeedsState createState() => _NeedsState();
}

class _NeedsState extends State<Needs> {
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
        Need need = needs[index];
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [

            Container(
              child: NeedListItem(
                  tap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NeedDetailsScreen(index: index)));
                  },
                  user: need.user,
                  title: need.title,
                  date: need.date,
                  viewCount: need.viewCount,
                  thumbnail: Container(
                      margin: EdgeInsets.only(left: 5, right: 5),
                      height: 100,
                      child: Image(
                          image: AssetImage(need.imageUrl), fit: BoxFit.cover))),
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
                            ? Color.fromRGBO(0, 0, 0, 0.9)
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
              itemCount: needs.length,
              scrollDirection: Axis.vertical,
              gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300, childAspectRatio: 4 / 2),
              itemBuilder: (BuildContext context, int index) {
                Need need = needs[index];
                return NeedListItem(
                    tap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NeedDetailsScreen(index: index)));
                    },
                    user: need.user,
                    title: need.title,
                    date: need.date,
                    viewCount: need.viewCount,
                    thumbnail: Container(
                        margin: EdgeInsets.only(left: 5, right: 5),
                        height: 100,
                        child: Image(
                            image: AssetImage(need.imageUrl), fit: BoxFit.cover)));
              }),
        ),
      ],
    );
  }

}
