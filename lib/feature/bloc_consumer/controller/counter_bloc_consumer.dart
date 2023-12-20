import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mangement_bloc/feature/bloc_consumer/controller/controller_bloc_consumer.dart';


Widget counterBlocConsumer(
    Stream<int> stream, final ControlBlocConsumer controlBlocConsumer) {
  return BlocConsumer<ControlBlocConsumer, int>(
    bloc: controlBlocConsumer,
    builder: (context, state) {
      return Text(
        "$state",
        style: const TextStyle(fontSize: 50),
      );
    },
    listener: (context, state) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(seconds: 1),
          content: Text("ini data genap"),
        ),
      );
    },
    listenWhen: (previous, current) {
      //todo ini kondisi menampilkan data genap
      if (current % 2 == 0) {
        return true;
      } else {
        return false;
      }
    },
  );
}
