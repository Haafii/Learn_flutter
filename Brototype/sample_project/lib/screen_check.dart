import 'package:flutter/material.dart';

class ScreenCheck extends StatelessWidget {
  const ScreenCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("value found"),
          ],
        ),
      ),
    );
  }
}
