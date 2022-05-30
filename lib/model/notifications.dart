class Notifications {
  late String id;
  late String userId;
  late String title;
  late String message;
  late bool seen;
  late String modifiedAt;
  late String createdAt;

  Notifications(
      {required this.id,
      required this.userId,
      required this.title,
      required this.message,
      required this.seen,
      required this.modifiedAt,
      required this.createdAt});

  Notifications.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    title = json['title'];
    message = json['message'];
    seen = json['seen'] ?? false;
    modifiedAt = json['modified_at'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userId'] = this.userId;
    data['title'] = this.title;
    data['message'] = this.message;
    data['seen'] = this.seen;
    data['modified_at'] = this.modifiedAt;
    data['created_at'] = this.createdAt;
    return data;
  }
}
