import 'package:flutter/material.dart';
import 'package:state_mangement_bloc/feature/cubit/control/control_cubit.dart';
import 'package:state_mangement_bloc/feature/cubit/control/stream_cubit.dart';

class CubitPage extends StatelessWidget {
  final ControlCubit myCounterCubit = ControlCubit(initialData: 0);

   CubitPage({super.key});

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
