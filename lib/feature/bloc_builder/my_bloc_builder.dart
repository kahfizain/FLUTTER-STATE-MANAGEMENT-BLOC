import 'package:flutter/material.dart';
import 'package:state_mangement_bloc/feature/bloc_builder/control/control_bloc.dart';
import 'package:state_mangement_bloc/feature/bloc_builder/control/counter_bloc_builder.dart';

class BlocBuilderPage extends StatelessWidget {
  final ControlBloc controlBloc =
  ControlBloc(init: 0);

  BlocBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Builder Aps"),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:
            counterBlocBuilder(controlBloc.stream, controlBloc),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  controlBloc.removeData();
                },
                icon: const Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () {
                  controlBloc.addData();
                },
                icon: const Icon(Icons.add),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
