class User {
  final String imagePath;
  final String name;
  final String email;
  final String about;
  final bool isDarkMode;
  final String date;

  const User({
    required this.imagePath,
    required this.name,
    required this.email,
    required this.about,
    required this.isDarkMode,
    required this.date,
  });

  User copy({
    String? imagePath,
    String? name,
    String? email,
    String? about,
    bool? isDarkMode,
    String? date,
  }) =>
      User(
        imagePath: imagePath ?? this.imagePath,
        name: name ?? this.name,
        email: email ?? this.email,
        about: about ?? this.about,
        isDarkMode: isDarkMode ?? this.isDarkMode,
        date: date ?? this.date,
      );

  static User fromJson(Map<String, dynamic> json) => User(
        imagePath: json['imagePath'],
        name: json['name'],
        email: json['email'],
        about: json['about'],
        isDarkMode: json['isDarkMode'],
        date: json['date'],
      );

  Map<String, dynamic> toJson() => {
        'imagePath': imagePath,
        'name': name,
        'email': email,
        'about': about,
        'isDarkMode': isDarkMode,
        'date': date,
      };
}
