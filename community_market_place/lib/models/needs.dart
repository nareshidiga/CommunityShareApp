class Need {
  String imageUrl;
  String name;
  String title;
  String user;
  String date;
  String description;
  int viewCount;

  Need({this.imageUrl, this.name, this.title, this.user, this.date, this.viewCount, this.description});
}

List<Need> needs = [
  Need(imageUrl: "images/pic1.jpg", name: "Restaurants", title: "Need room for quarantine", user: "Naresh", date: "23/06/2020", viewCount: 10, description: "I need extra room"),
  Need(imageUrl: "images/pic1.jpg", name: "Restaurants", title: "Need room for quarantine", user: "Naresh", date: "23/06/2020", viewCount: 10, description: "I need extra room"),
  Need(imageUrl: "images/pic1.jpg", name: "Restaurants", title: "Need room for quarantine", user: "Naresh", date: "23/06/2020", viewCount: 10, description: "I need extra room"),
];
