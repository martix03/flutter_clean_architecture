import 'package:esercizio/domain/entities/digimon_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_state.freezed.dart';

@freezed
abstract class ListPageState with _$ListPageState {
  ListPageState._();

  factory ListPageState.initial() = _ListPageStateInitial;

  factory ListPageState.loading() = _ListPageStateLoading;

  factory ListPageState.error(String error) = _ListPageStateError;

  factory ListPageState.data(List<DigimonEntity> value) = _ListPageStateData;
}
