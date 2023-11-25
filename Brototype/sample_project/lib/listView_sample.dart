import 'package:flutter/material.dart';
import 'package:sample_project/screen_2.dart';

class ListViewSample extends StatelessWidget {
  const ListViewSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('list view sample'),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (ctx, index) {
            return ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return ScreenTwo(name: "Person $index");
                    },
                  ),
                );
              },
              title: Text("Person $index"),
              subtitle: const Text("Iam using whatsapp"),
              leading: const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.green,
                backgroundImage: AssetImage("assets/images/profile.jpeg"),
              ),
              trailing: Text("20:$index"),
            );
          },
          separatorBuilder: (ctx, index) {
            return const Divider();
          },
          itemCount: 20,
        ),
      ),
    );
  }
}
