// Project imports:
import 'package:planny/core/data/model/instructor_response.dart';
import 'package:planny/core/data/model/vehicle_response.dart';
import 'package:planny/core/domain/entity/instructor_entity.dart';
import 'package:planny/core/domain/entity/vehicle_entity.dart';

extension VehicleResponseMapper on VehicleResponse {
  VehicleEntity toDomain() => VehicleEntity(id: id, licensePlate: licensePlate, mediaUrl: mediaUrl);
}
