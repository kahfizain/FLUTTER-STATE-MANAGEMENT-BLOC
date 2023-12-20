import 'package:flutter/material.dart';
import 'package:state_mangement_bloc/feature/bloc_builder/bloc_builder_page.dart';
import 'package:state_mangement_bloc/feature/bloc_listener/bloc_listener_page.dart';
import 'package:state_mangement_bloc/feature/cubit/cubit_page.dart';
import 'package:state_mangement_bloc/feature/observer_cubit/observer_cubit_page.dart';
import 'package:state_mangement_bloc/feature/stream/stream_page.dart';

class Menu extends StatelessWidget {
   Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          elevation: 0,
          toolbarHeight: 80,
          title: const Text(
            "STATE MANAGEMENT BLOC",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Your onPressed logic here
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const StreamPage()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[300],
                fixedSize: const Size(150, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0), // Set your preferred radius
                ),
              ),
              child: const Text(
                "STREAM",
                style:  TextStyle(color: Color(0xFF747D8C)),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Your onPressed logic here
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>  CubitPage()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[300],
                fixedSize: const Size(150, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0), // Set your preferred radius
                ),
              ),
              child: const Text(
                "CUBIT",
                style:  TextStyle(color: Color(0xFF747D8C)),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Your onPressed logic here
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>  ObserverCubitPage()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[300],
                fixedSize: const Size(150, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0), // Set your preferred radius
                ),
              ),
              child: const Text(
                "CUBIT OBSERVER",
                style:  TextStyle(color: Color(0xFF747D8C)),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Your onPressed logic here
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>  BlocBuilderPage()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[300],
                fixedSize: const Size(150, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0), // Set your preferred radius
                ),
              ),
              child: const Text(
                "BLOC BULDER",
                style:  TextStyle(color: Color(0xFF747D8C)),
              ),
            ),

            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Your onPressed logic here
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>  BlocListenerPage()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[300],
                fixedSize: const Size(150, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0), // Set your preferred radius
                ),
              ),
              child: const Text(
                "BLOC LISTENER",
                style:  TextStyle(color: Color(0xFF747D8C)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
