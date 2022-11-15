import 'package:flutter/material.dart';
import 'package:untitled1/screens/signin_screen/signin_screen.dart';
import 'package:untitled1/screens/signout_screen/signout_screen.dart';

class SideBarScreen extends StatelessWidget {
  const SideBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Ali"),
            accountEmail: Text("ali@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "./assets/images/signing.png",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.login),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SignoutScreen()));
            },
            title: const Text('Login'),
          ),
          ListTile(
            leading: const Icon(Icons.email),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SignoutScreen()));
            },
            title: const Text('Email'),
          ),
          ListTile(
            leading: const Icon(Icons.call_end),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SignoutScreen()));
            },
            title: const Text('Phone'),
          ),
        ],
      ),
    );
  }
}
