import 'package:flutter/material.dart';
import 'package:untitled1/screens/signout_screen/signout_screen.dart';
import 'package:untitled1/widgets/custom_bottom.dart';
import 'package:untitled1/widgets/input_decoration.dart';

class SigningScreen extends StatelessWidget {
  const SigningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }
}

_buildAppBar() {
  return AppBar(
    title: const Text("Signing Screen"),
  );
}

_buildBody() {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
              'https://c0.wallpaperflare.com/preview/153/892/991/united-states-lexington-white-background-quote-photo.jpg',
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
                  " Sign up  ",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
                )),
            Container(
              margin: const EdgeInsets.only(bottom: 11),
              child: TextField(
                decoration: UIConfig().inputDecoration('Your Name', "Name"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 11, bottom: 11),
              child: TextField(
                decoration: UIConfig().inputDecoration('Your Email', "Email"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 11),
              child: TextField(
                decoration: UIConfig().inputDecoration(
                  'Your Password',
                  'Password',
                ),
                obscureText: true,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(21),
              child: const CustomButton(
                buttonText: "Continue",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'Joined us before ?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                CustomButton002(
                  buttonText2: 'Login',
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
