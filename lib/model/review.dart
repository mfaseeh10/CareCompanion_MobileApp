class Review {
  String name;
  double rating;
  String date;
  String comment;

  Review(
      {required this.name,
      required this.rating,
      required this.date,
      required this.comment});

  // Review.fromJson(Map<String, dynamic> json) {

  //   name = json['name'];
  //   rating = json['rating'];
  //   date = json['date'];
  //   comment = json['comment'];
  // }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['rating'] = this.rating;
    data['date'] = this.date;
    data['comment'] = this.comment;
    return data;
  }
}
