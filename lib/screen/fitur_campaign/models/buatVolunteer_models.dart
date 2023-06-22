// ignore: file_names
class BuatCampaignModels {
    String title;
    CategoryModels category;
    String description;
    String about;
    String story;
    String targetRecipient;
    String proposal;
    UploadImagesModels image;
    String video;
    String hastag;
    String location;
    String startDate;
    String endDate;
    int targetDonation;
    int totalActionDonation;
    String detailActionDonation;
    String type;
    String status;

  BuatCampaignModels({
    required this.title,
    required this.category,
    required this.description,
    required this.about,
    required this.story,
    required this.targetRecipient,
    required this.proposal,
    required this.image,
    required this.video,
    required this.hastag,
    required this.location,
    required this.startDate,
    required this.endDate,
    required this.targetDonation,
    required this.totalActionDonation,
    required this.detailActionDonation,
    required this.type,
    required this.status,
  });

  factory BuatCampaignModels.fromJson(Map<String, dynamic> json) {
    return BuatCampaignModels(
      title: json['title'],
      category: CategoryModels.fromJson(json['category']),
      description: json['description'],
      about: json['about'],
      story: json['story'],
      targetRecipient: json['targetRecipient'],
      proposal: json['proposal'],
      image: UploadImagesModels.fromJson(json['image']),
      video: json['video'],
      hastag: json['hastag'],
      location: json['location'],
      startDate: json['startDate'],
      endDate: json['endDate'],
      targetDonation: json['targetDonation'],
      totalActionDonation: json['totalActionDonation'],
      detailActionDonation: json['detailActionDonation'],
      type: json['type'],
      status: json['status'],

    );
  }
}

class CategoryModels {
  int id;
  String createdAt;
  String updateAt;
  String name;

  CategoryModels({
    required this.id,
    required this.createdAt,
    required this.updateAt,
    required this.name,
  });

  factory CategoryModels.fromJson(Map<String, dynamic> json) {
    return CategoryModels(
      id: json['id'], 
      createdAt: json['created_at'], 
      updateAt: json['update_at'], 
      name: json['name'],
    );
  }
}

class UploadImagesModels {
  String link;

  UploadImagesModels({
    required this.link,

  });

  factory UploadImagesModels.fromJson(Map<String, dynamic> json) {
    return UploadImagesModels(
      link: json['link'],
    );
  }
}
