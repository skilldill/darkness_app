import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Text(
        "Contacts",
        style: TextStyle(color: Colors.white, fontSize: 70),
      ),
    );
  }
}
