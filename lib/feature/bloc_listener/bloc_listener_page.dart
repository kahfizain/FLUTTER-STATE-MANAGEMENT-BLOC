import 'package:flutter/material.dart';
import 'package:state_mangement_bloc/feature/bloc_listener/controller/controller_bloc_listener.dart';
import 'package:state_mangement_bloc/feature/bloc_listener/controller/counter_bloc_listener.dart';


class BlocListenerPage extends StatelessWidget {
  final ControlBlocListener controlBlocListener =
  ControlBlocListener(init: 0);

  BlocListenerPage({super.key});

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
            counterBlocListener(controlBlocListener.stream, controlBlocListener),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  controlBlocListener.removeData();
                },
                icon: const Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () {
                  controlBlocListener.addData();
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
