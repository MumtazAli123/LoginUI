import 'package:flutter/material.dart';

class CustomWidget001 extends StatelessWidget {
  const CustomWidget001({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 3,
              child: Container(
                height: 100,
                color: Colors.white54,
                child: ListView.builder(
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.all(11),
                    child: SizedBox(
                      width: 100,
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Card(
              elevation: 3,
              child: Container(
                width: 400,
                height: 400,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
