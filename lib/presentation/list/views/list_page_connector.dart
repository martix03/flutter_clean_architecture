import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../di/di.dart';
import '../cubit/list_cubit.dart';
import 'list_page.dart';

class ListPageConnector extends StatelessWidget {
  const ListPageConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ListPageCubit(getIt())..start(),
      child: const DigimonList(),
    );
  }
}
