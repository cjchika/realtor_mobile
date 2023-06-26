// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PropertyModel _$$_PropertyModelFromJson(Map<String, dynamic> json) =>
    _$_PropertyModel(
      externalID: json['externalID'] as String?,
      coverPhoto: json['coverPhoto'] as String?,
      title: json['title'] as String?,
      rentFrequency: json['rentFrequency'] as String?,
      location: json['location'] as String?,
      category: json['category'] as String?,
      amenities: json['amenities'] as List<dynamic>?,
      productScore: json['productScore'] as int?,
      type: json['type'] as String?,
      rooms: json['rooms'] as int?,
      baths: json['baths'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      isBookmarked: json['isBookmarked'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PropertyModelToJson(_$_PropertyModel instance) =>
    <String, dynamic>{
      'externalID': instance.externalID,
      'coverPhoto': instance.coverPhoto,
      'title': instance.title,
      'rentFrequency': instance.rentFrequency,
      'location': instance.location,
      'category': instance.category,
      'amenities': instance.amenities,
      'productScore': instance.productScore,
      'type': instance.type,
      'rooms': instance.rooms,
      'baths': instance.baths,
      'price': instance.price,
      'isBookmarked': instance.isBookmarked,
    };
