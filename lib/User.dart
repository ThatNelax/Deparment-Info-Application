class User {
  final String userName;
  final String password;

  User({required this.userName, required this.password});

  Map<String, dynamic> toJson() => {
    'userName': userName,
    'password': password,
  };

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userName: json['userName']?.toString() ?? '',
      password: json['password']?.toString() ?? '',
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is User && runtimeType == other.runtimeType && userName == other.userName;

  @override
  int get hashCode => userName.hashCode;
}
