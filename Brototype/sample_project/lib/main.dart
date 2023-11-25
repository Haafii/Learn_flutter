import 'package:flutter/material.dart';
import 'package:sample_project/listView_sample.dart';
import 'package:sample_project/screen_1.dart';
import 'package:sample_project/screen_2.dart';
import 'package:sample_project/screen_check.dart';
import 'package:sample_project/screen_counter.dart';
import 'package:sample_project/screen_password.dart';
import 'package:shared_preferences/shared_preferences.dart';

// late SharedPreferences sharedPreferences;
Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // sharedPreferences = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      // home: const ListViewSample(),
      home: const EnterValue(),
      // routes: {
      //   'screen_1': (ctx) {
      //     return const ScreenOne();
      //   },
      //   'screen_2': (ctx) {
      //     return const ScreenTwo();
      //   }
      // },
    );
  }
}
