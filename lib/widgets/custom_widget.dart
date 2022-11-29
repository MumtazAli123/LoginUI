import 'package:flutter/material.dart';

class CustomWidget001 extends StatelessWidget {
  const CustomWidget001({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(21),
      width: 100,
      height: 100,
      color: Colors.red,
    );
  }
}

class WidgetsListView extends StatelessWidget {
  const WidgetsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 120,
        height: 200,
        color: Colors.green,
      ),
    );
  }
}
