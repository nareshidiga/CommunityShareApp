class Post {
  String imageUrl;
  String userIcon;
  String title;
  String user;
  String date;
  String description;
  bool accepted;
  int viewCount;
  String response;
  bool isNeed;

  Post(
      {this.imageUrl,
      this.userIcon,
      this.title,
      this.user,
      this.date,
      this.viewCount,
      this.accepted,
      this.response,
      this.description,
      this.isNeed});
}

List<Post> posts = [
  Post(
      imageUrl: "images/room.jpg",
      userIcon: "images/pic2.jpg",
      title:
          "Need room for quarantine for my cousin who is suffering from covid-19",
      user: "Raj",
      date: "23/06/2020",
      viewCount: 60,
      accepted: false,
      isNeed: true,
      response: "has supported your need",
      description:
          "Need room for quarantine for my cousin who is suffering from covid-19 Need room for quarantine for my cousin who is suffering from covid-19"),
  Post(
      imageUrl: "images/doctor.jpg",
      userIcon: "images/pic3.jpg",
      title: "Any cardiac doctor in the community, please come to our "
          "home immediately.",
      user: "Adi",
      date: "23/06/2020",
      viewCount: 102,
      accepted: false,
      isNeed: true,
      response: "has supported your need",
      description:
          "Any cardiac doctor in the community, please come to our home "
          "immediately. My grand mother is experiencing chest pain."),
  Post(
      imageUrl: "images/sanitizer.jpg",
      userIcon: "images/pic2.jpg",
      title: "Need a Sanitizer bottle and face mask",
      user: "Raj",
      date: "23/06/2020",
      viewCount: 46,
      accepted: false,
      isNeed: true,
      response: "has supported your need",
      description:
          "Need a Sanitizer bottle and a face mask if you got a spare one. "
          "Not able to buy it as they are out of stock in the shops."),
  Post(
      imageUrl: "images/trainer.jpg",
      userIcon: "images/pic3.jpg",
      title: "We have arranged a dance trainer for our kids. "
          "If you like to join your kid too, please contact us.",
      user: "Adi",
      date: "23/06/2020",
      viewCount: 56,
      accepted: false,
      response: "has accepted your offer",
      isNeed: false,
      description: "We have arranged a dance trainer for our kids. "
          "If you like to join your kid too, please contact us."),
  Post(
      imageUrl: "images/car2.jpg",
      userIcon: "images/pic2.jpg",
      title: "I am selling my car as I am getting a new one. "
          "Interested people, please contact me at the earliest.",
      user: "Raj",
      date: "23/06/2020",
      viewCount: 84,
      accepted: false,
      isNeed: false,
      response: "has accepted your offer",
      description: "I am selling my car as I am getting a new one. "
          "Interested people, please contact me at the earliest."),
];
