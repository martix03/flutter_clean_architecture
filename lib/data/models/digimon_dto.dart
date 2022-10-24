import 'package:json_annotation/json_annotation.dart';

part 'digimon_dto.g.dart';

@JsonSerializable()
class DigimonDto {
  String? name;
  String? img;
  String? level;

  DigimonDto({this.name, this.img, this.level});

  factory DigimonDto.fromJson(Map<String, dynamic> json) =>
      _$DigimonDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DigimonDtoToJson(this);
}
