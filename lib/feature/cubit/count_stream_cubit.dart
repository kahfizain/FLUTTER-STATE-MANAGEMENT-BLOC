import 'package:flutter/material.dart';

Widget countStreamCubit(Stream<int> stream) {
  print("bulid");
  return StreamBuilder(
      stream: stream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text(
            'Waiting for data...',
            style: TextStyle(fontSize: 50),
          );
        } else {
          return Text(
            'Data: ${snapshot.data}',
            style: const TextStyle(fontSize: 50),
          );
        }
      });
}
