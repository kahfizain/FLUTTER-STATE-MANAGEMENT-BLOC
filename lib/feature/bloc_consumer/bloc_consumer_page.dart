import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mangement_bloc/feature/bloc_consumer/controller/controller_bloc_consumer.dart';
import 'package:state_mangement_bloc/feature/bloc_consumer/controller/counter_bloc_consumer.dart';
import 'package:state_mangement_bloc/feature/bloc_listener/controller/controller_bloc_listener.dart';
import 'package:state_mangement_bloc/feature/bloc_listener/controller/counter_bloc_builder.dart';
import 'package:state_mangement_bloc/feature/bloc_listener/controller/counter_bloc_listener.dart';

class BlocConsumerPage extends StatelessWidget {
  final ControlBlocConsumer controlBlocConsumer = ControlBlocConsumer(init: 0);

  BlocConsumerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Builder Aps"),
      ),
      body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //todo bloc listener
            Center(
              child: counterBlocConsumer(
                  controlBlocConsumer.stream, controlBlocConsumer),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    controlBlocConsumer.removeData();
                  },
                  icon: const Icon(Icons.remove),
                ),
                IconButton(
                  onPressed: () {
                    controlBlocConsumer.addData();
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
