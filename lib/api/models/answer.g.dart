// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ansewer _$AnsewerFromJson(Map<String, dynamic> json) => Ansewer(
      count: json['count'] as int?,
      name: json['name'] as String?,
      countryId: json['contru_id'] as String?,
      gender: json['gender'] as String?,
      //probability: json['probability'] as double?,
    );

Map<String, dynamic> _$AnsewerToJson(Ansewer instance) => <String, dynamic>{
      'count': instance.count,
      'name': instance.name,
      'contru_id': instance.countryId,
      'gender': instance.gender,
      //'probability': instance.probability,
    };
