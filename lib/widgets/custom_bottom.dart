import 'package:flutter/material.dart';
import 'package:untitled1/screens/signin_screen/signin_screen.dart';
import 'package:untitled1/screens/signout_screen/signout_screen.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;

  const CustomButton({Key? key, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
          child: Text(
        buttonText,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      )),
    );
  }
}

class CustomButton002 extends StatelessWidget {
  final String buttonText2;

  const CustomButton002({Key? key, required this.buttonText2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SignoutScreen()));
      },
      child: Text(buttonText2),
    );
  }
}

class CustomButton003 extends StatelessWidget {
  final String buttonText3;

  const CustomButton003({Key? key, required this.buttonText3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SigningScreen()));
        },
        child: Text(buttonText3));
  }
}

class CustomButton004 extends StatelessWidget {
  const CustomButton004({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.more_vert),
      onPressed: () {},
    );
  }
}
