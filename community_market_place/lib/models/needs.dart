class Need {
  String imageUrl;
  String userIcon;
  String title;
  String user;
  String date;
  String description;
  bool accepted;
  int viewCount;

  Need(
      {this.imageUrl,
      this.userIcon,
      this.title,
      this.user,
      this.date,
      this.viewCount,
      this.accepted,
      this.description});
}

List<Need> needs = [
  Need(
      imageUrl: "images/bed.jpg",
      userIcon: "images/pic1.jpg",
      title:
          "Need room for quarantine for my cousin who is suffering from covid-19",
      user: "Naresh",
      date: "23/06/2020",
      viewCount: 60,
      accepted: false,
      description:
          "Need room for quarantine for my cousin who is suffering from covid-19 Need room for quarantine for my cousin who is suffering from covid-19"),
  Need(
      imageUrl: "images/doctor.jpg",
      userIcon: "images/pic3.jpg",
      title: "Any cardiac doctor in the community, please come to our "
          "home immediately.",
      user: "Naresh",
      date: "23/06/2020",
      viewCount: 102,
      accepted: false,
      description:
          "Any cardiac doctor in the community, please come to our home "
          "immediately. My grand mother is experiencing chest pain."),
  Need(
      imageUrl: "images/blood.jpg",
      userIcon: "images/pic2.jpg",
      title: "Urgently looking for A- blood",
      user: "Naresh",
      date: "23/06/2020",
      viewCount: 50,
      accepted: false,
      description:
          "My friend has met with an accident. Urgently looking for A- blood."),
  Need(
      imageUrl: "images/sanitizer.jpg",
      userIcon: "images/pic1.jpg",
      title: "Need a Sanitizer bottle and face mask",
      user: "Naresh",
      date: "23/06/2020",
      viewCount: 46,
      accepted: false,
      description:
          "Need a Sanitizer bottle and a face mask if you got a spare one. "
          "Not able to buy it as they are out of stock in the shops."),
  Need(
      imageUrl: "images/dog.jpg",
      userIcon: "images/pic3.jpg",
      title: "Can you take care of my dog on this Wednesday?",
      user: "Naresh",
      date: "23/06/2020",
      viewCount: 67,
      accepted: false,
      description:
          "I am going out of town on this Wednesday. I will be back by "
          "8pm. I have no one at home to take care of my pet dog. Could you"
          "take care of my dog for the day. Thanks."),
  Need(
      imageUrl: "images/car.jpg",
      userIcon: "images/pic2.jpg",
      title: "My car is broke. Can any one driving to the central town "
          "offer me a ride for next three days?",
      user: "Naresh",
      date: "23/06/2020",
      viewCount: 34,
      description: "My car is broke. I work in the central town. If you also go"
          "to the central town, could you"
          "offer me a ride for next three days?"),
  Need(
      imageUrl: "images/pic1.jpg",
      userIcon: "images/pic1.jpg",
      title: "Looking for someone to play tennis with.",
      user: "Naresh",
      date: "23/06/2020",
      viewCount: 78,
      accepted: false,
      description: "I am a beginner level tennis player. I have recently moved"
          "to this residential community. I am for a tennis buddy to play on "
          "the weekends morning"),
  Need(
      imageUrl: "images/pic3.jpg",
      userIcon: "images/pic3.jpg",
      title: "Running out of veggies, please let me know if you "
          "got extra capacity.",
      user: "Naresh",
      date: "23/06/2020",
      viewCount: 26,
      accepted: false,
      description: "Running out of veggies, could please let me know if you got"
          "extra capacity. Thank you"),
];
