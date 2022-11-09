class SignInModel {
  String email;
  String password;
  SignInModel({required this.email, required this.password});

  dynamic toJson() {
    return {
      "email": email,
      "password": password,
    };
  }
}

class SignInDataModel {
  bool status;
  String message;
  DataSignInModel? data;
  SignInDataModel(
      {required this.data, required this.message, required this.status});
  factory SignInDataModel.fromJson(Map<String, dynamic> json) {
    return SignInDataModel(
      data: DataSignInModel.fromJson(json["data"]),
      message: json["message"],
      status: json["status"],
    );
  }
}

class DataSignInModel {
  String name;
  String email;
  String phone;
  int id;
  String token;
  String image;
  int credit;
  int points;

  DataSignInModel({
    required this.email,
    required this.id,
    required this.image,
    required this.name,
    required this.phone,
    required this.token,
    required this.credit,
    required this.points,
  });
  factory DataSignInModel.fromJson(Map<String, dynamic> json) {
    return DataSignInModel(
      email: json["email"],
      id: json["id"],
      image: json["image"],
      name: json["name"],
      phone: json["phone"],
      token: json["token"],
      points: json["points"],
      credit: json["credit"],
    );
  }
}
