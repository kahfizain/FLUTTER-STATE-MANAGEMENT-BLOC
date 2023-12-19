import 'package:flutter/material.dart';
import 'package:state_mangement_bloc/feature/cubit/count_cubit.dart';
import 'package:state_mangement_bloc/feature/cubit/count_stream_cubit.dart';
import 'package:state_mangement_bloc/feature/observer_cubit/count_observer_cubit.dart';
import 'package:state_mangement_bloc/feature/observer_cubit/count_stream_observer_cubit.dart';

class MyObserverCubitApp extends StatelessWidget {
  final CounterObserverCubit myCounterCubit =
      CounterObserverCubit(initialData: 0);

  MyObserverCubitApp({super.key});

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
