import 'package:flutter/material.dart';
import 'package:state_mangement_bloc/feature/cubit/controller/control_cubit.dart';

Widget countStreamCubit(Stream<int> stream, final ControlCubit counterCubit) {
  return StreamBuilder(
      initialData: counterCubit.initialData,
      stream: stream,
      builder: (context, snapshot) {
        return Text(
          'Data: ${snapshot.data}',
          style: const TextStyle(fontSize: 50),
        );
      });
}
