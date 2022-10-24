import 'package:esercizio/data/models/digimon_dto.dart';
import 'package:esercizio/domain/entities/digimon_entity.dart';

class DigimonMapping {
  const DigimonMapping._();
  static List<DigimonEntity> mapDigimon(List<DigimonDto> response) => response
      .map((e) => DigimonEntity(name: e.name, img: e.img, level: e.level)).toList();
}
