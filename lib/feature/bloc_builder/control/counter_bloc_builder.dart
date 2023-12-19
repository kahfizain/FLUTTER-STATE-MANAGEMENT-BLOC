import 'package:flutter/material.dart';
import 'package:state_mangement_bloc/feature/bloc_builder/control/control_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget counterBlocBuilder(Stream<int> stream, final ControlBloc controlBloc) {
  return BlocBuilder(
      bloc: controlBloc,
      builder: (context, state) {
        return Text(
          "$state",
          style: const TextStyle(fontSize: 50),
        );
      });
}
