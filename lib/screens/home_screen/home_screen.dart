import 'package:flutter/material.dart';
import 'package:untitled1/screens/sidebar_screen/sidebar_screen.dart';
import 'package:untitled1/widgets/custom_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBarScreen(),
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }
}

_buildAppBar() {
  return AppBar(
    title: const Text('My App'),
    centerTitle: true,
    actions: const <Widget>[
      Icon(Icons.notifications),
      Icon(
        Icons.more_vert_rounded,
      ),
    ],
  );
}

_buildBody() {
  return Column(
    children: const [
      CustomWidget001(),
    ],
  );
}
