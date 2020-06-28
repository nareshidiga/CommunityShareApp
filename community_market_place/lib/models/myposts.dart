import 'package:communitymarketplace/models/post_types.dart';

class Post {
  String imageUrl;
  String userIcon;
  String title;
  String user;
  String date;
  String description;
  bool accepted;
  int viewCount;
  bool isNeed;

  Post(
      {this.imageUrl,
        this.userIcon,
        this.title,
        this.user,
        this.date,
        this.viewCount,
        this.accepted,
        this.description,
         this.isNeed});
}

List<Post> posts = [
  Post(
      imageUrl: "images/pic1.jpg",
      userIcon: "images/pic1.jpg",
      title:
      "Offer room for quarantine for my cousin who is suffering from covid-19 Need room for quarantine for my cousin who is suffering from covid-19",
      user: "Raj",
      date: "23/06/2020",
      viewCount: 10,
      accepted: false,
      isNeed: false,
      description: "I need extra room"),
  Post(
      imageUrl: "images/pic3.jpg",
      userIcon: "images/pic3.jpg",
      title: "Offer room  for quarantine",
      user: "Raj",
      date: "23/06/2020",
      viewCount: 10,
      accepted: false,
      isNeed: false,
      description: "I need extra room"),
  Post(
      imageUrl: "images/pic4.jpg",
      userIcon: "images/pic2.jpg",
      title: "Offer room for quarantine",
      user: "Raj",
      date: "23/06/2020",
      viewCount: 10,
      accepted: false,
      isNeed: false,
      description: "I need extra room"),
  Post(
      imageUrl: "images/pic1.jpg",
      userIcon: "images/pic1.jpg",
      title:
      "Offer room quarantine for my cousin who is suffering from covid-19 Need room for quarantine for my cousin who is suffering from covid-19",
      user: "Naresh",
      date: "23/06/2020",
      viewCount: 10,
      accepted: false,
      isNeed: false,
      description: "I need extra room"),
  Post(
      imageUrl: "images/pic3.jpg",
      userIcon: "images/pic3.jpg",
      title: "Offer room for quarantine",
      user: "Naresh",
      date: "23/06/2020",
      viewCount: 10,
      accepted: false,
      isNeed: true,
      description: "I need extra room"),
  Post(
      imageUrl: "images/pic4.jpg",
      userIcon: "images/pic2.jpg",
      title: "Offer room for quarantine",
      user: "Naresh",
      date: "23/06/2020",
      viewCount: 10,
      accepted: false,
      isNeed: false,
      description: "I need extra room"),
  Post(
      imageUrl: "images/pic4.jpg",
      userIcon: "images/pic2.jpg",
      title: "Offer room for quarantine",
      user: "Naresh",
      date: "23/06/2020",
      viewCount: 10,
      accepted: true,
      isNeed: true,
      description: "I need extra room"),
];

