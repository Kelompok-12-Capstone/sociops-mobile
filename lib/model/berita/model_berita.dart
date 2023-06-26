class NewsResponse {
  List<Datum> data;
  String message;
  bool status;

  NewsResponse({
    required this.data,
    required this.message,
    required this.status,
  });

  factory NewsResponse.fromJson(Map<String, dynamic> json) => NewsResponse(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        message: json["message"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "message": message,
        "status": status,
      };
}

class Datum {
  Author author;
  int categoryId;
  String categoryName;
  DateTime createdAt;
  String description;
  int id;
  String photoUrl;
  String title;
  DateTime updatedAt;

  Datum({
    required this.author,
    required this.categoryId,
    required this.categoryName,
    required this.createdAt,
    required this.description,
    required this.id,
    required this.photoUrl,
    required this.title,
    required this.updatedAt,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        author: authorValues.map[json["author"]]!,
        categoryId: json["category_id"],
        categoryName: json["category_name"],
        createdAt: DateTime.parse(json["created_at"]),
        description: json["description"],
        id: json["id"],
        photoUrl: json["photo_url"],
        title: json["title"],
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "author": authorValues.reverse[author],
        "category_id": categoryId,
        "category_name": categoryName,
        "created_at": createdAt.toIso8601String(),
        "description": description,
        "id": id,
        "photo_url": photoUrl,
        "title": title,
        "updated_at": updatedAt.toIso8601String(),
      };
}

enum Author { NAILUL_IZAH, PAK_JOHN }

final authorValues = EnumValues(
    {"Nailul Izah": Author.NAILUL_IZAH, "Pak John": Author.PAK_JOHN});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
