import 'package:flutter/material.dart';
import 'package:state_mangement_bloc/feature/stream/count_stream_builder.dart';

class MyStream extends StatelessWidget {

  Stream<int> countStream() async* {
    for (int i = 1; i <= 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      yield i;
    }
  }


  const MyStream({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stream Aps"),
      ),
      body:  Center(
        child:  countStreamBuilder(countStream()),
      ),
    );
  }
}
