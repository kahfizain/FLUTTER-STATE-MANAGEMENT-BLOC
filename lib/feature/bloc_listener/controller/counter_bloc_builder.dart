import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mangement_bloc/feature/bloc_listener/controller/controller_bloc_listener.dart';

Widget counterBlocBuilder(Stream<int> stream, final ControlBlocListener controlBlocListener) {
  print("ini block bulder");
  return BlocBuilder<ControlBlocListener, int>(
      bloc: controlBlocListener,
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
