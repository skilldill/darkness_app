import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Positioned(
                top: 70,
                right: -400,
                child: Opacity(
                  opacity: 0.25,
                  child: Container(
                    height: 600,
                    width: 600,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Colors.red, Colors.blue])),
                    child: Center(
                      child: Container(
                        height: 590,
                        width: 590,
                        decoration: BoxDecoration(color: Colors.black),
                      ),
                    ),
                  ),
                )),
            Positioned(
                bottom: 70,
                left: -700,
                child: Opacity(
                  opacity: 0.3,
                  child: Container(
                    height: 1000,
                    width: 1000,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Colors.red, Colors.blue])),
                    child: Center(
                      child: Container(
                        height: 890,
                        width: 890,
                        decoration: BoxDecoration(color: Colors.black),
                      ),
                    ),
                  ),
                ))
          ],
        ));
  }
}
