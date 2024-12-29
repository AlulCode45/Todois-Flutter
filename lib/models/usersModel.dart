class Users {
  String email;
  String name;
  String? photo_profile;
  String username;

  Users({
    required this.email,
    required this.name,
    required this.username,
    this.photo_profile
  });
}
