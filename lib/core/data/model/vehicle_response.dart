// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'generated/vehicle_response.g.dart';

@JsonSerializable()
class VehicleResponse {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'license_plate')
  final String licensePlate;
  @JsonKey(name: 'media_url')
  final String mediaUrl;

  factory VehicleResponse.fromJson(Map<String, dynamic> json) => _$VehicleResponseFromJson(json);

  VehicleResponse({
    required this.id,
    required this.licensePlate,
    required this.mediaUrl,
  });

  Map<String, dynamic> toJson() => _$VehicleResponseToJson(this);
}
