class EventModel {
  int id;
  String title;
  CategoryModel category;
  int categoryId;
  OrganizerModel organizer;
  int userId;
  String description;
  String about;
  String story;
  String targetRecipient;
  String proposal;
  String image;
  String video;
  String hashtag;
  String location;
  String startDate;
  String endDate;
  int targetDonation;
  int totalActionDonation;
  String detailActionDonation;
  String type;
  String status;
  String createdAt;
  String updatedAt;

  EventModel({
    required this.id,
    required this.title,
    required this.category,
    required this.categoryId,
    required this.organizer,
    required this.userId,
    required this.description,
    required this.about,
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

  factory EventModel.fromJson(Map<String, dynamic> json) {
    return EventModel(
      id: json['id'],
      title: json['title'],
      category: CategoryModel.fromJson(json['category']),
      categoryId: json['category_id'],
      organizer: OrganizerModel.fromJson(json['organizer']),
      userId: json['user_id'],
      description: json['description'],
      about: json['about'],
      story: json['story'],
      targetRecipient: json['target_recipient'],
      proposal: json['proposal'],
      image: json['image'],
      video: json['video'],
      hashtag: json['hashtag'],
      location: json['location'],
      startDate: json['start_date'],
      endDate: json['end_date'],
      targetDonation: json['target_donation'],
      totalActionDonation: json['total_action_donation'],
      detailActionDonation: json['detail_action_donation'],
      type: json['type'],
      status: json['status'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}

class CategoryModel {
  int id;
  String createdAt;
  String updatedAt;
  String name;

  CategoryModel({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.name,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      name: json['name'],
    );
  }
}

class OrganizerModel {
  int id;
  String name;
  String email;
  String role;
  String createdAt;
  String updatedAt;
  String photoUrl;

  OrganizerModel({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.createdAt,
    required this.updatedAt,
    required this.photoUrl,
  });

  factory OrganizerModel.fromJson(Map<String, dynamic> json) {
    return OrganizerModel(
        id: json['ID'],
        name: json['Name'],
        email: json['Email'],
        role: json['Role'],
        createdAt: json['CreatedAt'],
        updatedAt: json['UpdatedAt'],
        photoUrl: '');
  }
}
