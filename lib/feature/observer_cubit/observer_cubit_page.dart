import 'package:flutter/material.dart';
import 'package:state_mangement_bloc/feature/observer_cubit/controller/controller_observer_cubit.dart';
import 'package:state_mangement_bloc/feature/observer_cubit/controller/stream_observer_cubit.dart';

class ObserverCubitPage extends StatelessWidget {
  final ControlObserverCubit myCounterCubit =
      ControlObserverCubit(initialData: 0);

  ObserverCubitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Observer Cubit Aps"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:
                countStreamObserverCubit(myCounterCubit.stream, myCounterCubit),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  myCounterCubit.removeData();
                },
                icon: const Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () {
                  myCounterCubit.addData();
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
