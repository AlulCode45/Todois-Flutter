class usersModel {
  String email;
  String name;
  String? photo_profile;
  String username;

  usersModel({
    required this.email,
    required this.name,
    required this.username,
    this.photo_profile
  });
}
