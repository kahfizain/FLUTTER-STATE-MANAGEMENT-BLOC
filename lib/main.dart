
import 'package:flutter/material.dart';
import 'package:state_mangement_bloc/feature/bloc_builder/bloc_builder_page.dart';
import 'package:state_mangement_bloc/feature/cubit/cubit_page.dart';
import 'package:state_mangement_bloc/feature/observer_cubit/observer_cubit_page.dart';
import 'package:state_mangement_bloc/feature/stream/stream_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: BlocBuilderPage(),
    );
  }
}


