import 'package:either_dart/either.dart';
import 'package:esercizio/domain/repositories/digimon_repository.dart';

import '../entities/digimon_entity.dart';

class GetListUseCase {
  final DigimonRepository _digimonRepository;

  GetListUseCase(this._digimonRepository);

  Future<Either<String, List<DigimonEntity>>> call() {
    return _digimonRepository.getDigimonList();
  }
}
