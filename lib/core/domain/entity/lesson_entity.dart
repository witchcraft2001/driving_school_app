// Project imports:
import 'package:planny/core/domain/entity/instructor_entity.dart';
import 'package:planny/core/domain/entity/product_entity.dart';
import 'vehicle_entity.dart';

class LessonEntity {
  final int id;
  final String uuid;
  final DateTime date;
  final DateTime start;
  final DateTime end;
  final String startTime;
  final String endTime;
  final String totalTime;
  final bool allDay;
  final String icon;
  final String productCategoryName;
  final int productCategoryId;
  final String? description;
  final String? note;
  final String? address;
  final String type;
  final int calendar;
  final int backgroundColor;
  final int borderColor;
  final InstructorEntity instructor;
  final VehicleEntity? vehicle;
  final ProductEntity product;

  LessonEntity({
    required this.id,
    required this.uuid,
    required this.date,
    required this.start,
    required this.end,
    required this.startTime,
    required this.endTime,
    required this.totalTime,
    required this.allDay,
    required this.icon,
    required this.productCategoryName,
    required this.productCategoryId,
    required this.description,
    required this.note,
    required this.address,
    required this.type,
    required this.calendar,
    required this.backgroundColor,
    required this.borderColor,
    required this.instructor,
    required this.vehicle,
    required this.product,
  });
}
