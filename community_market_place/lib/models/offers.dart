class Offer {
  String imageUrl;
  String userIcon;
  String title;
  String user;
  String date;
  String description;
  int viewCount;

  Offer(
      {this.imageUrl,
        this.userIcon,
        this.title,
        this.user,
        this.date,
        this.viewCount,
        this.description});
}

List<Offer> offers = [
  Offer(
      imageUrl: "images/pic1.jpg",
      userIcon: "images/pic1.jpg",
      title:
      "Offer room for quarantine for my cousin who is suffering from covid-19 Need room for quarantine for my cousin who is suffering from covid-19",
      user: "Raj",
      date: "23/06/2020",
      viewCount: 10,
      description: "I need extra room"),
  Offer(
      imageUrl: "images/pic3.jpg",
      userIcon: "images/pic3.jpg",
      title: "Offer room  for quarantine",
      user: "Raj",
      date: "23/06/2020",
      viewCount: 10,
      description: "I need extra room"),
  Offer(
      imageUrl: "images/pic4.jpg",
      userIcon: "images/pic2.jpg",
      title: "Offer room for quarantine",
      user: "Raj",
      date: "23/06/2020",
      viewCount: 10,
      description: "I need extra room"),
  Offer(
      imageUrl: "images/pic1.jpg",
      userIcon: "images/pic1.jpg",
      title:
      "Offer room quarantine for my cousin who is suffering from covid-19 Need room for quarantine for my cousin who is suffering from covid-19",
      user: "Naresh",
      date: "23/06/2020",
      viewCount: 10,
      description: "I need extra room"),
  Offer(
      imageUrl: "images/pic3.jpg",
      userIcon: "images/pic3.jpg",
      title: "Offer room for quarantine",
      user: "Naresh",
      date: "23/06/2020",
      viewCount: 10,
      description: "I need extra room"),
  Offer(
      imageUrl: "images/pic4.jpg",
      userIcon: "images/pic2.jpg",
      title: "Offer room for quarantine",
      user: "Naresh",
      date: "23/06/2020",
      viewCount: 10,
      description: "I need extra room"),
];

