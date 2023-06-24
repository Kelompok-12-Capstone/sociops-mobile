class CampaignModel {
  String title;
  int category_id;
  String description;
  String story;
  String proposal;
  String image;
  String video;
  String hashtag;
  String target_recipient;
  String location;
  String start_date;
  String end_date;
  int target_donation;
  int total_action_donation;
  String detail_action_donation;
  String type;
  String status;

  CampaignModel({
    required this.title,
    required this.category_id,
    required this.description,
    required this.story,
    required this.proposal,
    required this.image,
    required this.video,
    required this.hashtag,
    required this.target_recipient,
    required this.location,
    required this.start_date,
    required this.end_date,
    required this.target_donation,
    required this.total_action_donation,
    required this.detail_action_donation,
    required this.type,
    required this.status,
  });

  // factory CampaignModel.fromJson(Map<String, dynamic> json) {
  //   return CampaignModel(
  //     title: json['title'],
  //     proposal: json['proposal'],
  //     total_action_donation: json['total_action_donation'],
  //     detail_action_donation: json['detail_action_donation'],
  //     category_id: json['category_id'],
  //     description: json['description'],
  //     story: json['story'],
  //     target_recipient: json['target_recipient'],
  //     image: json['image'],
  //     video: json['video'],
  //     hashtag: json['hashtag'],
  //     location: json['location'],
  //     start_date: json['start_date'],
  //     end_date: json['end_date'],
  //     target_donation: json['target_donation'],
  //     type: json['type'],
  //     status: json['status'],
  //   );
  // }
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

class pickPDF {
  String link;
  
  pickPDF({
    required this.link,
  });

  factory pickPDF.fromJson(Map<String, dynamic> json) {
    return pickPDF(
      link: json['link'],
    );
  }
}

// class Campaign {
//     String title;
//     CategoryModels category;
//     String description;
//     String about;
//     String story;
//     String targetRecipient;
//     String proposal;
//     UploadImagesModels image;
//     String video;
//     String hastag;
//     String location;
//     String startDate;
//     String endDate;
//     int targetDonation;
//     int totalActionDonation;
//     String detailActionDonation;
//     String type;
//     String status;

//   Campaign({
//     required this.title,
//     required this.category,
//     required this.description,
//     required this.about,
//     required this.story,
//     required this.targetRecipient,
//     required this.proposal,
//     required this.image,
//     required this.video,
//     required this.hastag,
//     required this.location,
//     required this.startDate,
//     required this.endDate,
//     required this.targetDonation,
//     required this.totalActionDonation,
//     required this.detailActionDonation,
//     required this.type,
//     required this.status,
//   });

//   factory Campaign.fromJson(Map<String, dynamic> json) {
//     return Campaign(
//       title: json['title'],
//       category: CategoryModels.fromJson(json['category']),
//       description: json['description'],
//       about: json['about'],
//       story: json['story'],
//       targetRecipient: json['targetRecipient'],
//       proposal: json['proposal'],
//       image: UploadImagesModels.fromJson(json['image']),
//       video: json['video'],
//       hastag: json['hastag'],
//       location: json['location'],
//       startDate: json['startDate'],
//       endDate: json['endDate'],
//       targetDonation: json['targetDonation'],
//       totalActionDonation: json['totalActionDonation'],
//       detailActionDonation: json['detailActionDonation'],
//       type: json['type'],
//       status: json['status'],

//     );
//   }
// }