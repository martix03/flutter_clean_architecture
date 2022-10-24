
import 'package:dio/dio.dart';
import 'package:esercizio/data/models/digimon_dto.dart';
import 'package:retrofit/http.dart';

import 'digimon_service.dart';

part 'digimon_service_impl.g.dart';

@RestApi()
abstract class DigimonServiceImpl extends DigimonService {
  factory DigimonServiceImpl(Dio dio, {String baseUrl}) = _DigimonServiceImpl;

  @override
  @GET("")
  Future<List<DigimonDto>> getDigimonList();
}


