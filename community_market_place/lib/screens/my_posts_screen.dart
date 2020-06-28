import 'package:communitymarketplace/models/myposts.dart';
import 'package:flutter/material.dart';

import 'my_posts_details_screen.dart';

class MyPosts extends StatefulWidget {
  @override
  _MyPostsState createState() => _MyPostsState();
}

class _MyPostsState extends State<MyPosts> {
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: posts.length,
        gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300, childAspectRatio: 3.5 / 2),
        itemBuilder: (BuildContext context, int index) {
          Post post = posts[index];
          return PostListItem(
              tap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            MyPostsDetailsScreen(index: index)));
              },
              thumbnail: Container(
                  margin: EdgeInsets.only(left: 5, right: 5),
                  height: 100,
                  child: Image(
                      image: AssetImage(post.imageUrl), fit: BoxFit.cover)),
              title: post.title,
              user: post.user,
              date: post.date,
              viewCount: post.viewCount,
              isNeed: post.isNeed);
        });
  }
}

class PostListItem extends StatelessWidget {
  const PostListItem({
    this.thumbnail,
    this.title,
    this.user,
    this.date,
    this.viewCount,
    this.isNeed,
    this.tap,
  });

  final Widget thumbnail;
  final String title;
  final String user;
  final String date;
  final int viewCount;
  final bool isNeed;
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
                  isNeed: isNeed,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PostDescription extends StatelessWidget {
  const _PostDescription({
    Key key,
    this.title,
    this.user,
    this.date,
    this.viewCount,
    this.isNeed,
  }) : super(key: key);

  final String title;
  final String user;
  final String date;
  final int viewCount;
  final bool isNeed;

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
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
          Text(
            date + '     ' + '$viewCount views',
            style: const TextStyle(fontSize: 10.0),
          ),
          SizedBox(height: 3),
          Text(
            isNeed ? 'NEED' : 'OFFER',
            style: const TextStyle(
                fontSize: 10.0,
                color: Colors.green,
                fontWeight: FontWeight.bold),
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
