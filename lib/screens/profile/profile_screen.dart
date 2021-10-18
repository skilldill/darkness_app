import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
                  opacity: 0.5,
                  child: Container(
                    height: 600,
                    width: 600,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(600),
                        gradient: const LinearGradient(
                            colors: [Colors.red, Colors.blue])),
                    child: Center(
                      child: Container(
                        height: 590,
                        width: 590,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(590),
                            color: Colors.black),
                      ),
                    ),
                  ),
                )),
            Positioned(
                bottom: 70,
                left: -600,
                child: Opacity(
                  opacity: 0.3,
                  child: Container(
                    height: 1000,
                    width: 1000,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(600),
                        gradient: const LinearGradient(
                            colors: [Colors.red, Colors.blue])),
                    child: Center(
                      child: Container(
                        height: 790,
                        width: 790,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(590),
                            color: Colors.black),
                      ),
                    ),
                  ),
                ))
          ],
        ));
  }
}
