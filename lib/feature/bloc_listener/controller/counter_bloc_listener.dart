import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mangement_bloc/feature/bloc_listener/controller/controller_bloc_listener.dart';

import 'counter_bloc_builder.dart';

Widget counterBlocListener(
    Stream<int> stream, final ControlBlocListener controlBlocListener) {
  return BlocListener<ControlBlocListener, int>(
    bloc: controlBlocListener,
    listener: (context, state) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(seconds: 1),
          content: Text("Data jangan kurang dari >10"),
        ),
      );
    },
    listenWhen: (previous, current) {
      //todo ini kondisi menapikan jika nilai kurang dari >10
      if (current > 10) {
        return true;
      } else {
        return false;
      }
    },
    child: counterBlocBuilder(controlBlocListener.stream, controlBlocListener),
  );
}
