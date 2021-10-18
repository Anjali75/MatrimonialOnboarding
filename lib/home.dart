import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen"),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Onboarding()));
            },
            icon: Icon(CupertinoIcons.arrow_left)),
      ),
    );
  }
}
