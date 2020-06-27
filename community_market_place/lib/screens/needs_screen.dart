import 'package:flutter/material.dart';
import 'package:communitymarketplace/models/needs.dart';


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
            date,
            style: const TextStyle(fontSize: 10.0),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
          Text(
            '$viewCount views',
            style: const TextStyle(fontSize: 10.0),
          ),
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
  });

  final Widget thumbnail;
  final String title;
  final String user;
  final String date;
  final int viewCount;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12.0))),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: thumbnail,
            ),
            Expanded(
              flex: 3,
              child: _PostDescription(
                title: title,
                user: user,
                date: date,
                viewCount: viewCount,
              ),
            ),
            const Icon(
              Icons.more_vert,
              size: 16.0,
            ),
          ],
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
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: needs.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1, childAspectRatio: 4),
        itemBuilder: (BuildContext context, int index){
          Need need = needs[index];
          return NeedListItem(
              user: need.user,
              title: need.title,
              date: need.date,
              viewCount: need.viewCount,
              thumbnail: Container(
                height: 100,
                child: Image(image: AssetImage(need.imageUrl))
          ));
        }
    );
  }
}
