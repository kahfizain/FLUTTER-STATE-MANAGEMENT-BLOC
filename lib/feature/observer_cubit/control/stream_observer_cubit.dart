import 'package:flutter/material.dart';
import 'package:state_mangement_bloc/feature/cubit/control/control_cubit.dart';
import 'package:state_mangement_bloc/feature/observer_cubit/control/control_observer_cubit.dart';

Widget countStreamObserverCubit(Stream<int> stream, final ControlObserverCubit observerCubit) {
  return StreamBuilder(
      initialData: observerCubit.initialData,
      stream: stream,
      builder: (context, snapshot) {
        return Column(
          children: [
            Text(
              'Data: ${snapshot.data}',
              style: const TextStyle(fontSize: 50),
            ),

            Text(
              'Current: ${observerCubit.current}',
              style: const TextStyle(fontSize: 50),
            ),
            Text(
              'Next: ${observerCubit.next}',
              style: const TextStyle(fontSize: 50),
            ),

          ],
        );
      });
}
