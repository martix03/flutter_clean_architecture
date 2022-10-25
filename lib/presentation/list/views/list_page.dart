import 'package:esercizio/domain/entities/digimon_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/list_cubit.dart';
import '../cubit/list_state.dart';


class DigimonList extends StatefulWidget {
  const DigimonList({Key? key}) : super(key: key);

  @override
  State<DigimonList> createState() => _DigimonListState();
}

class _DigimonListState extends State<DigimonList> {
  List<DigimonEntity>? _data;

  ListPageCubit get _cubit => context.read<ListPageCubit>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(centerTitle: true, title: Text('Digimon List')),
            body: BlocListener<ListPageCubit, ListPageState>(
                listener: (context, state) {
                  state.whenOrNull(
                    loading: () => setState(() {
                      _buildLoading();
                    }),
                    data: (data) => setState(() {
                      _data = data;
                    }),
                  );
                },
                child: _buildCard(context))));
  }

  Widget _buildCard(BuildContext context) {
    Map<String, MaterialColor> colors = {
      "Fresh": Colors.lightBlue,
      "In Training": Colors.green,
      "Training": Colors.green,
      "Rookie": Colors.yellow,
      "Champion": Colors.orange,
      "Ultimate": Colors.red,
      "Mega": Colors.purple,
      "Armor": Colors.pink,
    };
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.8),
      itemCount: _data?.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => {},
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: BorderSide(
                  color: _data?[index].level != null
                      ? colors[_data?[index].level]!
                      : Colors.blue,
                  width: 2.0,
                )),
            child: Column(
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.all(8.0),
                    child: Text("${_data?[index].name}")),
                Expanded(
                  child: Image.network(
                    _data![index].img!,
                    height: 50,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                              color: _data?[index].level != null
                                  ? colors[_data?[index].level]!
                                  : Colors.blue,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8))),
                          alignment: Alignment.center,
                          margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                          child: Text("${_data?[index].level}")),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildLoading() => const Center(child: CircularProgressIndicator());
}
