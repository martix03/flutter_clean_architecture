import 'package:esercizio/domain/usecases/get_list_use_case.dart';
import 'package:esercizio/presentation/list/cubit/list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListPageCubit extends Cubit<ListPageState> {
  final GetListUseCase getListUseCase;

  ListPageCubit(this.getListUseCase) : super(ListPageState.initial());

  void start() {
    emit(ListPageState.loading());
    getListUseCase.call().then((value) {
      value.fold(
            (left) => emit(ListPageState.error(left)),
            (right) => emit(ListPageState.data(right)),
      );
    });
  }

}
