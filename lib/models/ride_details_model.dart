import 'package:uber/models/destination_model.dart';

class RideDetailsModel {
  DateTime date;
  String startTime;
  String endTime;
  double amount;
  String currency;
  String service;
  String driverName;
  String vehicle;
  int tip;
  int rating;
  String mapPath;
  DestinationModel start;
  DestinationModel destination;

  RideDetailsModel({
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.amount,
    required this.currency,
    required this.service,
    required this.driverName,
    required this.vehicle,
    required this.tip,
    required this.rating,
    required this.mapPath,
    required this.start,
    required this.destination,
  });

  factory RideDetailsModel.fromJson(Map<String, dynamic> json) => RideDetailsModel(
        date: DateTime.parse(json["date"] ?? ""),
        startTime: json["startTime"] ?? "",
        endTime: json["endTime"] ?? "",
        amount: json["amount"]?.toDouble() ?? "",
        currency: json["currency"] ?? "",
        service: json["service"] ?? "",
        driverName: json["driverName"] ?? "",
        vehicle: json["vehicle"] ?? "",
        tip: json["tip"] ?? 0,
        rating: json["rating"] ?? 0,
        mapPath: json["mapPath"] ?? "",
        start: DestinationModel.fromJson(json["start"]),
        destination: DestinationModel.fromJson(json["destination"]),
      );
}
