import 'package:flutter/material.dart';

Widget countStreamBuilder(Stream<int> stream) {

  return StreamBuilder(
      stream: stream,
      builder: ( context,  snapshot) {

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