import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_model.freezed.dart';

part 'property_model.g.dart';

@freezed
class PropertyModel with _$ProductModel {
  const factory PropertyModel({
    int? id,
    String? title,
    double? price,
    @Default(false) bool isFavorite,
  }) = _PropertyModel;

  factory PropertyModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyModelFromJson(json);
}
