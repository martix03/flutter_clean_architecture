import 'package:either_dart/either.dart';
import 'package:esercizio/data/repositories/digimon_mapping.dart';

import '../../domain/entities/digimon_entity.dart';
import '../../domain/repositories/digimon_repository.dart';
import '../data_sources/digimon_service.dart';

class DigimonRepositoryImp extends DigimonRepository {
  final DigimonService _digimonService;

  DigimonRepositoryImp(this._digimonService);

  @override
  Future<Either<String, List<DigimonEntity>>> getDigimonList() async {
    try {
      var list = await _digimonService.getDigimonList();
      return Right(
          DigimonMapping.mapDigimon(list));
    } catch (e) {
      return Left("Error");
    }
  }
}
