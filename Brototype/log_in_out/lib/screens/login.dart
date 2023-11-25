import 'package:flutter/material.dart';

class ScreenLogin extends StatefulWidget {
  ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _usernameController = TextEditingController();
  bool isDataMatched = true;
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Username',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Visibility(
                visible: !isDataMatched,
                child: const Text(
                  "Username and password does not match",
                  style: TextStyle(color: Colors.red),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    checkLogin(context);
                  },
                  child: const Text('Enter'))
            ],
          ),
        ),
      ),
    );
  }

  void checkLogin(BuildContext ctx) {
    final username = _usernameController.text;
    final password = _passwordController.text;
    const errorMessage = 'username and password does not match';
    if (username == password) {
    } else {
      // showDialog(
      //   context: context,
      //   builder: (BuildContext ctx1) {
      //     return AlertDialog(
      //       title: const Text('Error'),
      //       content: const Text(errorMessage),
      //       actions: [
      //         TextButton(
      //           onPressed: () {
      //             Navigator.of(ctx1).pop();
      //           },
      //           child: const Text('Close'),
      //         ),
      //       ],
      //     );
      //   },
      // );

      setState(() {
        isDataMatched = false;
      });
      ScaffoldMessenger.of(ctx)
          .showSnackBar(const SnackBar(content: Text(errorMessage)));
    }
  }
}
