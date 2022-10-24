import '../models/digimon_dto.dart';

abstract class DigimonService {
  Future<List<DigimonDto>> getDigimonList();
}
