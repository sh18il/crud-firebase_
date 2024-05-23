class StModel {
  String? name;
  String? email;
  String? address;
  String? id;

  StModel({this.name, this.email, this.address, this.id});
  StModel.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    email = json["email"];
    address = json["address"];
    id = json["id"];
  }
  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "email": email,
      "address": address,
      "id": id,
    };
  }
}
