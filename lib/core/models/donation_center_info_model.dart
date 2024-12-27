class DonationCenterInfoModel {
  String? name;
  String? latitude;
  String? longitude;
  String? address;
  String? phone;
  String? coverPhoto;
  DonationCenterInfoModel({this.latitude, this.longitude, this.name, this.address, this.phone, this.coverPhoto});

  DonationCenterInfoModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    address = json['address'];
    phone = json['phone'];
    coverPhoto = json['coverPhoto'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['address'] = this.address;
    data['phone'] = this.phone;
    data['coverPhoto'] = this.coverPhoto;
    return data;
  }
}
