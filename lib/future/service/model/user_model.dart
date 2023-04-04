import 'dart:convert';

class UserModel {
  String? uid;
  String? email;
  String? password;
  String? name;
  String? userName;
  String? phoneNumber;
  String? whichPackage;
  String? imagePath;
  UserModel(
      {this.uid,
      this.email,
      this.password,
      this.name,
      this.userName,
      this.phoneNumber,
      this.whichPackage,
      this.imagePath});

  UserModel copyWith(
      {String? uid,
      String? email,
      String? password,
      String? name,
      String? userName,
      String? phoneNumber,
      String? whichPackage,
      String? imagePath}) {
    return UserModel(
        uid: uid ?? this.uid,
        email: email ?? this.email,
        password: password ?? this.password,
        name: name ?? this.name,
        userName: userName ?? this.userName,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        whichPackage: whichPackage ?? this.whichPackage,
        imagePath: imagePath ?? this.imagePath);
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'password': password,
      'name': name,
      'userName': userName,
      'phoneNumber': phoneNumber,
      'whichPackage': whichPackage,
      "imagePath": imagePath
    };
  }

  factory UserModel.fromMap(Map<String, dynamic>? map) {
    return UserModel(
        uid: map!['uid'],
        email: map['email'],
        password: map['password'],
        name: map['name'],
        userName: map['userName'],
        phoneNumber: map['phoneNumber'],
        whichPackage: map['whichPackage'],
        imagePath: map['imagePath']);
  }

  @override
  String toString() {
    return 'UserModel(uid: $uid, email: $email, password: $password, name: $name, userName: $userName, phoneNumber: $phoneNumber, whichPackage: $whichPackage)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.uid == uid &&
        other.email == email &&
        other.password == password &&
        other.name == name &&
        other.userName == userName &&
        other.phoneNumber == phoneNumber &&
        other.whichPackage == whichPackage;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        email.hashCode ^
        password.hashCode ^
        name.hashCode ^
        userName.hashCode ^
        phoneNumber.hashCode ^
        whichPackage.hashCode;
  }
}
