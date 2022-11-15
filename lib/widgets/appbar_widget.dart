import 'package:flutter/material.dart';

class AppBarWidgets extends StatelessWidget {
  final String title;

  const AppBarWidgets({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Divider(),
      appBar: AppBar(
        title: const Text("AppBar"),
        centerTitle: true,
        actions: const <Widget>[
          Icon(Icons.notifications),
          Icon(
            Icons.verified,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
