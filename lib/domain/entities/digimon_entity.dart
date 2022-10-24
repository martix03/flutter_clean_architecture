class DigimonListEntity {
  List<DigimonEntity> digimonList;

  DigimonListEntity({
    required this.digimonList,
  });
}

class DigimonEntity {
  String? name;
  String? img;
  String? level;

  DigimonEntity({
    required this.name,
    required this.img,
    required this.level,
  });
}

