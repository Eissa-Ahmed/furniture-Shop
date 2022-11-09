class SignUpModel {
  String name;
  String email;
  String password;
  String phone;
  SignUpModel({
    required this.email,
    required this.name,
    required this.password,
    required this.phone,
  });

  dynamic toJson() {
    return {
      "name": name,
      "email": email,
      "password": password,
      "phone": phone,
    };
  }
}

// class SignUpDataModel {
//   bool status;
//   String message;
//   DataSignUpModel? data;
//   SignUpDataModel(
//       {required this.data, required this.message, required this.status});
//   factory SignUpDataModel.fromJson(Map<String, dynamic> json) {
//     return SignUpDataModel(
//       data: DataSignUpModel.fromJson(json["data"]),
//       message: json["message"],
//       status: json["status"],
//     );
//   }
// }

// class DataSignUpModel {
//   String? name;
//   String? email;
//   String? phone;
//   int? id;
//   String? token;
//   String? image;

//   DataSignUpModel({
//     required this.email,
//     required this.id,
//     required this.image,
//     required this.name,
//     required this.phone,
//     required this.token,
//   });
//   factory DataSignUpModel.fromJson(Map<String, dynamic> json) {
//     return DataSignUpModel(
//       email: json["email"],
//       id: json["id"],
//       image: json["image"],
//       name: json["name"],
//       phone: json["phone"],
//       token: json["token"],
//     );
//   }
// }
