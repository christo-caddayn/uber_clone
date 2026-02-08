class DestinationModel {
  String address;
  String postalCode;
  String city;
  String country;

  DestinationModel({
    required this.address,
    required this.postalCode,
    required this.city,
    required this.country,
  });

  factory DestinationModel.fromJson(Map<String, dynamic> json) => DestinationModel(
        address: json["address"] ?? "",
        postalCode: json["postalCode"] ?? "",
        city: json["city"] ?? "",
        country: json["country"] ?? "",
      );
}
