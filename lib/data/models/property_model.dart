import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_model.freezed.dart';

part 'property_model.g.dart';

@freezed
class PropertyModel with _$PropertyModel {
  const factory PropertyModel({
    String? externalID,
    String? coverPhoto,
    String? title,
    String? rentFrequency,
    String? location,
    int? productScore,
    String? type,
    int? rooms,
    int? baths,
    double? price,
    @Default(false) bool isBookmarked,
  }) = _PropertyModel;

  factory PropertyModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyModelFromJson(json);
}

// List<Map<int, dynamic>>
// Map<String,dynamic>