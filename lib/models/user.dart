class User {
  User({required this.id, required this.profileImageUrl});

  final String id;
  final String profileImageUrl;

  factory User.fromJSON(Map<String, dynamic> json) {
    return User(id: json['id'], profileImageUrl: json['profile_image_url']);
  }
}
