import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_model.freezed.dart';

part 'property_model.g.dart';

@freezed
class PropertyModel with _$ProductModel {
  const factory PropertyModel({
    String? externalID,
    Map<String,dynamic>? coverPhoto,
    String? title,
    String? rentFrequency,
    List<Map<int, dynamic>>? location,
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
