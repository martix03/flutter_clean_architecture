// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digimon_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DigimonDto _$DigimonDtoFromJson(Map<String, dynamic> json) => DigimonDto(
      name: json['name'] as String?,
      img: json['img'] as String?,
      level: json['level'] as String?,
    );

Map<String, dynamic> _$DigimonDtoToJson(DigimonDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'img': instance.img,
      'level': instance.level,
    };
