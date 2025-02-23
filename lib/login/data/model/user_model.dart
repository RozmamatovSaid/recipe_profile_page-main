class UserModel {
  final firstName, lastName, username, email, phoneNumber, password;
  DateTime dateOfBirth;

  UserModel({
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.password,
    required this.dateOfBirth,
  });
  Map<String, dynamic> toJson() {
    return {
      "username": username,
      "fullName": "$firstName $lastName",
      "email": email,
      "phoneNumber": phoneNumber,
      "password": password,
      "dateOfBirth": "${dateOfBirth.day}-${dateOfBirth.month}-${dateOfBirth.year}",
    };
  }
}
