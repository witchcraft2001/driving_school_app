// Package imports:
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:planny/core/data/model/instructor_response.dart';
import 'package:planny/core/data/model/vehicle_response.dart';
import 'pagination_response.dart';

part 'generated/lesson_response.g.dart';

@JsonSerializable()
class LessonResponse {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'uuid')
  final String uuid;
  @JsonKey(name: 'date')
  final DateTime date;
  @JsonKey(name: 'start')
  final DateTime start;
  @JsonKey(name: 'end')
  final DateTime end;
  @JsonKey(name: 'start_time')
  final String startTime;
  @JsonKey(name: 'end_time')
  final String endTime;
  @JsonKey(name: 'total_time')
  final String totalTime;
  @JsonKey(name: 'all_day')
  final bool allDay;
  @JsonKey(name: 'icon')
  final String icon;
  @JsonKey(name: 'product_category_name')
  final String productCategoryName;
  @JsonKey(name: 'product_category_id')
  final int productCategoryId;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'calendar')
  final int calendar;
  @JsonKey(name: 'background_color')
  final String backgroundColor;
  @JsonKey(name: 'border_color')
  final String borderColor;
  @JsonKey(name: 'instructor')
  final InstructorResponse instructor;
  @JsonKey(name: 'vehicle')
  final VehicleResponse? vehicle;

  factory LessonResponse.fromJson(Map<String, dynamic> json) => _$LessonResponseFromJson(json);

  LessonResponse({
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
  });

  Map<String, dynamic> toJson() => _$LessonResponseToJson(this);
}

class LessonList {
  List<LessonResponse> list = List.empty();

  LessonList(this.list);

  LessonList.fromMappedJson(List<dynamic> json) {
    list = json.map((e) => LessonResponse.fromJson(e)).toList();
  }
}

class LessonListWithPaginationResponse {
  List<LessonResponse>? payloadResponse = List.empty();
  PaginationResponse? paginationResponse;

  LessonListWithPaginationResponse(this.payloadResponse);

  LessonListWithPaginationResponse.fromMappedJson(Map<String, dynamic> json)
      : payloadResponse = LessonList.fromMappedJson(json['data']).list,
        paginationResponse = PaginationResponse.fromJson(json);
}
