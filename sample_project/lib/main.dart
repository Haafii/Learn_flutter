import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.indigo,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(),
      body: SafeArea(
          child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  const Text(
                    "Hello",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            print("TextButton clicked");
                          },
                          child: const Text("chick me")),
                      IconButton(
                        onPressed: () {
                          print("IconButton clicked");
                        },
                        icon: const Icon(Icons.mi),
                      )
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        print("ElevatedButton clicked");
                      },
                      child: const Text("chick me"))
                ],
              ))),
    );
  }
}
