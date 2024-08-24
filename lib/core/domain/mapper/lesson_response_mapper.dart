// Project imports:
import 'package:planny/core/common/extension/string_extensions.dart';
import 'package:planny/core/data/model/lesson_response.dart';
import 'package:planny/core/domain/entity/lesson_entity.dart';
import 'package:planny/core/domain/mapper/instructor_response_mapper.dart';
import 'package:planny/core/domain/mapper/product_response_mapper.dart';
import 'package:planny/core/domain/mapper/vehicle_response_mapper.dart';

extension LessonResponseMapper on LessonResponse {
  LessonEntity toDomain() => LessonEntity(
        id: id,
        uuid: uuid,
        date: date,
        start: start,
        end: end,
        startTime: startTime,
        endTime: endTime,
        totalTime: totalTime,
        allDay: allDay,
        icon: icon,
        productCategoryName: productCategoryName,
        productCategoryId: productCategoryId,
        description: description,
        note: note,
        address: address,
        type: type,
        calendar: calendar,
        backgroundColor: backgroundColor.parseHex(defaultValue: 0),
        borderColor: borderColor.parseHex(defaultValue: 0),
        instructor: instructor.toDomain(),
        vehicle: vehicle?.toDomain(),
        product: product.toDomain(),
      );
}
