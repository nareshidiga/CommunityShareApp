class Offer {
  String imageUrl;
  String userIcon;
  String title;
  String user;
  String date;
  String description;
  bool accepted;
  int viewCount;

  Offer(
      {this.imageUrl,
      this.userIcon,
      this.title,
      this.user,
      this.date,
      this.viewCount,
      this.accepted,
      this.description});
}

List<Offer> offers = [
  Offer(
      imageUrl: "images/groceries.jpg",
      userIcon: "images/pic2.jpg",
      title: "I have all my groceries to give away as I am leaving to USA on a "
          "project work on this Friday.",
      user: "Raj",
      date: "23/06/2020",
      viewCount: 40,
      accepted: false,
      description:
          "I have to leave the city on a short notice. I have all my groceries"
          " to give away for free. I am leaving to USA on a "
          "project work on this Friday. "),
  Offer(
      imageUrl: "images/volleyball.jpg",
      userIcon: "images/pic3.jpg",
      title: "Join us on on coming Sunday to play volleyball ",
      user: "Adi",
      date: "23/06/2020",
      viewCount: 75,
      accepted: false,
      description: "Hello everyone, do you like to play volleyball. "
          "Join us on coming Sunday morning to play volleyball"),
  Offer(
      imageUrl: "images/conference.jpg",
      userIcon: "images/pic2.jpg",
      title: "Join our monthly social on next Saturday evening",
      user: "Raj",
      date: "23/06/2020",
      viewCount: 33,
      accepted: false,
      description: "Dear all, we are happy to organise a monthly social for "
          "all families in our community. There will be free food and drinks. "
          "Join our monthly social on next Saturday evening"),
  Offer(
      imageUrl: "images/car2.jpg",
      userIcon: "images/pic1.jpg",
      title: "I am selling my car as I am getting a new one. "
          "Interested people, please contact me at the earliest.",
      user: "Naresh",
      date: "23/06/2020",
      viewCount: 84,
      accepted: false,
      description: "I am selling my car as I am getting a new one. "
          "Interested people, please contact me at the earliest."),
  Offer(
      imageUrl: "images/room.jpg",
      userIcon: "images/pic3.jpg",
      title: "I have a spare room available for rent. If someone you know "
          "likes to move in here, please contact me.",
      user: "Adi",
      date: "23/06/2020",
      viewCount: 67,
      accepted: false,
      description:
          "I have a spare room available for rent. If someone you know "
          "likes to move in here, please contact me."),
  Offer(
      imageUrl: "images/trainer.jpg",
      userIcon: "images/pic1.jpg",
      title: "We have arranged a dance trainer for our kids. "
          "If you like to join your kid too, please contact us.",
      user: "Naresh",
      date: "23/06/2020",
      viewCount: 56,
      accepted: false,
      description: "We have arranged a dance trainer for our kids. "
          "If you like to join your kid too, please contact us."),
];
