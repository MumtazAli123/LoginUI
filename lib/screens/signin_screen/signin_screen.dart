import 'package:flutter/material.dart';
import 'package:untitled1/screens/sidebar_screen/sidebar_screen.dart';
import 'package:untitled1/widgets/custom_bottom.dart';
import 'package:untitled1/widgets/input_decoration.dart';

class SigningScreen extends StatefulWidget {
  const SigningScreen({Key? key}) : super(key: key);

  @override
  State<SigningScreen> createState() => _SigningScreenState();
}

class _SigningScreenState extends State<SigningScreen> {
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
    title: const Text("AppBar"),
    centerTitle: true,
    actions: const <Widget>[
      Icon(Icons.notifications),
      Icon(
        Icons.verified,
      ),
    ],
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
                decoration: UIConfig()
                    .inputDecoration('Your Name', "Name", Icons.person, null),
              ),
            ),
            TextField(
              decoration: UIConfig()
                  .inputDecoration('Your Email', "Email", Icons.email, null),
            ),
            const SizedBox(
              height: 11,
            ),
            TextFormField(
              obscureText: true,
              decoration: UIConfig().inputDecoration(
                'Your Password',
                'Password',
                Icons.lock,
                Icons.visibility,
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
