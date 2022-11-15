import 'package:flutter/material.dart';
import '../../widgets/custom_bottom.dart';
import '../../widgets/input_decoration.dart';

class SignoutScreen extends StatefulWidget {
  const SignoutScreen({Key? key}) : super(key: key);

  @override
  State<SignoutScreen> createState() => _SignoutScreenState();
}

class _SignoutScreenState extends State<SignoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }
}

_buildAppbar() {
  return AppBar(
    title: const Text('Login'),
  );
}

_buildBody() {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
              'https://24slides.com/templates/upload/templates-previews/wZ4mlN8ZyhFO5xuuqmBwUJKXxXw1sxXxNOtCkrCC.jpg',
            ),
            fit: BoxFit.cover)),
    child: Center(
      child: SizedBox(
        width: 340,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: const Text(
                  " Login  ",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
                )),
            Container(
              margin: const EdgeInsets.only(top: 11, bottom: 11),
              child: TextField(
                decoration: UIConfig()
                    .inputDecoration('Your Email', "Email", Icons.email),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 11),
              child: TextField(
                decoration: UIConfig()
                    .inputDecoration('Your Password', 'Password', Icons.lock),
                obscureText: true,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(21),
              child: const CustomButton(
                buttonText: "Signing",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'Not Registered ?',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                CustomButton003(buttonText3: 'Register Now')
              ],
            )
          ],
        ),
      ),
    ),
  );
}
