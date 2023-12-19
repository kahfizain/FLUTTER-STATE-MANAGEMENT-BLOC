import 'package:flutter/material.dart';
import 'package:state_mangement_bloc/feature/cubit/count_cubit.dart';
import 'package:state_mangement_bloc/feature/cubit/count_stream_cubit.dart';

class MyCubitApp extends StatelessWidget {
  final CounterCubit myCounterCubit = CounterCubit(initialData: 0);

   MyCubitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cubit Aps"),
      ),
      body:  Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: countStreamCubit(myCounterCubit.stream,myCounterCubit),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    myCounterCubit.removeData();
                  },
                  icon: const Icon(Icons.remove),
                ),
                IconButton(
                  onPressed: () {
                    myCounterCubit.addData();
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}
