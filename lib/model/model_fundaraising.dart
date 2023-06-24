
import 'dart:convert';

Fundaraising volunteerFromJson(String str) => Fundaraising.fromJson(json.decode(str));

class Fundaraising {
  List<DatumFundaraising> data;
  String message;
  bool status;

  Fundaraising({
    required this.data,
    required this.message,
    required this.status,
  });

  factory Fundaraising.fromJson(Map<String, dynamic> json) => Fundaraising(
        data: List<DatumFundaraising>.from(json["data"].map((x) => DatumFundaraising.fromJson(x))),
        message: json["message"],
        status: json["status"],
      );
}

class DatumFundaraising {
  int id;
  String title;
  Category category;
  int categoryId;
  Organizer organizer;
  int userId;
  String description;
  // String about;
  String story;
  String targetRecipient;
  String proposal;
  String image;
  String video;
  String hashtag;
  String location;
  DateTime startDate;
  DateTime endDate;
  int targetDonation;
  int totalActionDonation;
  String detailActionDonation;
  String type;
  String status;
  DateTime createdAt;
  DateTime updatedAt;

  DatumFundaraising({
    required this.id,
    required this.title,
    required this.category,
    required this.categoryId,
    required this.organizer,
    required this.userId,
    required this.description,
    required this.story,
    required this.targetRecipient,
    required this.proposal,
    required this.image,
    required this.video,
    required this.hashtag,
    required this.location,
    required this.startDate,
    required this.endDate,
    required this.targetDonation,
    required this.totalActionDonation,
    required this.detailActionDonation,
    required this.type,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory DatumFundaraising.fromJson(Map<String, dynamic> json) => DatumFundaraising(
              id: json["id"],
        title: json["title"],
        category: Category.fromJson(json["category"]),
        categoryId: json["category_id"],
        organizer: Organizer.fromJson(json["organizer"]),
        userId: json["user_id"],
        description: json["description"],
        // about: json["about"],
        story: json["story"],
        targetRecipient: json["target_recipient"],
        proposal: json["proposal"],
        image: json["image"],
        video: json["video"],
        hashtag: json["hashtag"],
        location: json["location"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        targetDonation: json["target_donation"],
        totalActionDonation: json["total_action_donation"],
        detailActionDonation: json["detail_action_donation"],
        type: json["type"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    
      );
}

class Category {
    int id;
    DateTime createdAt;
    DateTime updatedAt;
    String name;

    Category({
        required this.id,
        required this.createdAt,
        required this.updatedAt,
        required this.name,
    });

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "name": name,
    };
}

class Organizer {
    int id;
    String name;
    String email;
    String role;
    DateTime createdAt;
    DateTime updatedAt;
    String photoUrl;

    Organizer({
        required this.id,
        required this.name,
        required this.email,
        required this.role,
        required this.createdAt,
        required this.updatedAt,
        required this.photoUrl,
    });

    factory Organizer.fromJson(Map<String, dynamic> json) => Organizer(
        id: json["ID"],
        name: json["Name"],
        email: json["Email"],
        role: json["Role"],
        createdAt: DateTime.parse(json["CreatedAt"]),
        updatedAt: DateTime.parse(json["UpdatedAt"]),
        photoUrl: json["photo_url"],
    );
}
