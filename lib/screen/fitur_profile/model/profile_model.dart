class ProfileModel {
  final int id;
  final String? image;
  final String? name;
  final String? email;

  ProfileModel({
    required this.id,
    required this.image,
    required this.name,
    required this.email,
  });

  factory ProfileModel.fromMap(Map<String, dynamic> map) => ProfileModel(
        id: map['id'],
        image: map['image'],
        name: map['name'],
        email: map['email'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'image': image,
        'name': name,
        'email': email,
      };
}
