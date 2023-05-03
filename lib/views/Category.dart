class Activity {
  String id;
  List<dynamic>? links;
  String title;
  DateTime date;
  String? location;
  int? contact;
  int? price;
  String? about;
  String chapter;
  String image;
  bool isEvent;
  bool isWorkshop;
  bool isMeet;

  Activity({
    required this.id,
    required this.title,
    required this.date,
    this.location,
    this.contact,
    this.price,
    this.about,
    required this.chapter,
    required this.image,
    this.links,
    required this.isEvent,
    required this.isWorkshop,
    required this.isMeet,
  });


  factory Activity.fromJson(Map<String, dynamic> json) =>
      Activity(
        id: json["_id"],
        links: json["links"],
        title: json["title"],
        date: DateTime.parse(json["date"]),
        location: json["location"],
        contact: json["contact"],
        price: json["price"],
        about: json["about"],
        chapter: json["chapter"],
        image: json["image"],
        isEvent: json["isEvent"],
        isWorkshop: json["isWorkshop"],
        isMeet: json["isMeet"],
      );

  Map<String, dynamic> toJson() =>
      {
        "_id": id,
        "links": List<String>.from(links!.map((x) => x)),
        "title": title,
        "date": date.toIso8601String(),
        "location": location,
        "contact": contact,
        "price": price,
        "about": about,
        "chapter": chapter,
        "image": image,
        "isEvent": isEvent,
        "isWorkshop": isWorkshop,
        "isMeet": isMeet,
      };
}