import 'package:flutter/material.dart';
import 'package:state_mangement_bloc/feature/bloc_builder/control/control_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget counterBlocBuilder(Stream<int> stream, final ControlBloc controlBloc) {
  return BlocBuilder<ControlBloc, int>(
      bloc: controlBloc,
     /* buildWhen: (previous, current){
        //todo jika current >0 maka tampilkan selain itu tidak tampilkan
        if(current > 0){
          return true;
        }else{
          return false;
        }
      },*/
      builder: (context, state) {
        return Text(
          "$state",
          style: const TextStyle(fontSize: 50),
        );
      });
}
