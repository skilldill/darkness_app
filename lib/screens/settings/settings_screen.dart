import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Text(
        "Settings",
        style: TextStyle(color: Colors.white, fontSize: 70),
      ),
    );
  }
}
