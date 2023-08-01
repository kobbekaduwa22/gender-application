import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
//import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'answer.g.dart';

@JsonSerializable()
class Ansewer {
  int? count; //
  String? name;
  @JsonKey(name: 'contru_id')
  String? countryId;
  String? gender;

  Ansewer({
    this.count,
    this.name,
    this.countryId,
    this.gender,
    int? probability,
  });

  factory Ansewer.fromJson(Map<String, dynamic> json) =>
      _$AnsewerFromJson(json);

  get probability => null;
  Map<String, dynamic> toJson() => _$AnsewerToJson(this);
}
