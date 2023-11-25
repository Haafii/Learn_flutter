import 'package:flutter/material.dart';
import 'package:sample_project/screen_check.dart';
import 'package:shared_preferences/shared_preferences.dart';

final _textController = TextEditingController();

class EnterValue extends StatelessWidget {
  const EnterValue({super.key});

  @override
  Widget build(BuildContext context) {
    getSavedData(context);
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('list view sample'),
      // ),
      body: SafeArea(
          child: Column(
        children: [
          TextField(
            controller: _textController,
          ),
          ElevatedButton(
            onPressed: () {
              saveDataToStorage();
            },
            child: const Text("Save value"),
          )
        ],
      )),
    );
  }

  Future<void> saveDataToStorage() async {
    // print(_textController.text);
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('saved_value', _textController.text);
  }

  Future<void> getSavedData(BuildContext context) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final savedValue = sharedPreferences.getString('saved_value');
    if (savedValue != null) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => const ScreenCheck()));
    }
  }
}
