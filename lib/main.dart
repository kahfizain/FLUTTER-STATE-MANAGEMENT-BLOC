
import 'package:flutter/material.dart';
import 'package:state_mangement_bloc/feature/cubit/my_cubit.dart';
import 'package:state_mangement_bloc/feature/stream/my_stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: MyCubitApp(),
    );
  }
}


