import 'package:either_dart/either.dart';
import 'package:esercizio/domain/entities/digimon_entity.dart';


abstract class DigimonRepository {
  Future<Either<String, List<DigimonEntity>>> getDigimonList();
}
