import 'package:flutter/material.dart';
import 'package:untitled1/screens/home_screen/widgets/post_list.dart';
import 'package:untitled1/screens/home_screen/widgets/stories_avatar.dart';
import 'package:untitled1/screens/sidebar_screen/sidebar_screen.dart';

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
      Icon(Icons.more_vert_rounded),
    ],
  );
}

_buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: [_buildStories(), _buildPosts()],
    ),
  );
}

_buildStories() {
  return Card(
    elevation: 3,
    child: Container(
      padding: const EdgeInsets.only(top: 11.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //stories heading
          Container(
            padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Stories"),
                Text("Watch All"),
              ],
            ),
          ),
          //stories avatar
          const SizedBox(height: 80, child: StoriesAvatar()),
        ],
      ),
    ),
  );
}

_buildPosts() {
  return const PostListPage();
}
