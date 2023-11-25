import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text("Screen One"),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("screen_2");
                },
                child: const Text("Go to Screen Two"))
          ],
        ),
      ),
    );
  }
}
