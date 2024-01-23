import 'package:flutter/material.dart';
import 'package:money_management_app/screens/home/widgets/bottom_navigation.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigation(),
      body: SafeArea(
        child: Text("Home"),
      ),
    );
  }
}
