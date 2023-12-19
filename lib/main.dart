import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Stream<int> countStream() async* {
    for (int i = 1; i <= 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      yield i;
    }
  }


  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stream Aps"),
      ),
      body:  Center(
        child:  buildCustomStreamBuilder(countStream()),
      ),
    );
  }
}

Widget buildCustomStreamBuilder(Stream<int> stream) {

    print ("ini build");
  return StreamBuilder(
      stream: stream,
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {

        if (snapshot.hasError) {
          return Text('error ${snapshot.error}');
        }

        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return const Text(
              'Not connected to the stream',
              style: TextStyle(fontSize: 50),
            );
          case ConnectionState.waiting:
            return const Text(
              'Waiting for data...',
              style: TextStyle(fontSize: 50),
            );
          case ConnectionState.active:
            return Text(
              'Data: ${snapshot.data}',
              style: const TextStyle(fontSize: 50),
            );
          case ConnectionState.done:
            return const Text(
              'Stream has closed',
              style: TextStyle(fontSize: 50),
            );
        }
      });
}
