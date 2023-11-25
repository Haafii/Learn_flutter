import 'package:flutter/material.dart';

class ScreenCounter extends StatefulWidget {
  const ScreenCounter({super.key});

  @override
  State<ScreenCounter> createState() => _ScreenCounterState();
}

class _ScreenCounterState extends State<ScreenCounter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(counter.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter = counter + 1;
          });
        },
      ),
    );
  }
}
