import 'package:darkness/screens/contacts/contacts_screen.dart';
import 'package:darkness/screens/darkness/darkness_link.dart';
import 'package:darkness/screens/profile/profile_screen.dart';
import 'package:darkness/screens/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DarknessScreen extends StatefulWidget {
  const DarknessScreen({Key? key}) : super(key: key);

  @override
  _DarknessScreenState createState() => _DarknessScreenState();
}

class _DarknessScreenState extends State<DarknessScreen>
    with TickerProviderStateMixin {
  late Animation<double> linkAnimation;
  late AnimationController linkAnimationController;

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    linkAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));

    linkAnimation =
        Tween<double>(begin: 0, end: 100).animate(linkAnimationController);

    linkAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: Row(
              children: [
                GestureDetector(
                  child: Opacity(
                    opacity: 0.3,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      width: 120,
                      child: const RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          "DARKNESS",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 100,
                              letterSpacing: 25),
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    DarknessLink(
                        animation: linkAnimation,
                        to: const ProfileScreen(),
                        text: "PROFILE",
                        figure: Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Colors.blue,
                                  Colors.red,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(300)),
                        )),
                    DarknessLink(
                        animation: linkAnimation,
                        to: const SettingsScreen(),
                        text: "SETTINGS",
                        figure: Transform.rotate(
                          angle: 60,
                          child: Container(
                            width: 200,
                            height: 200,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Colors.grey,
                                  Colors.pink,
                                ],
                              ),
                            ),
                          ),
                        )),
                    DarknessLink(
                        animation: linkAnimation,
                        to: const ContactsScreen(),
                        text: "CONTACTS",
                        figure: Text(
                          "#",
                          style: TextStyle(
                              fontSize: 350,
                              height: 0.8,
                              fontWeight: FontWeight.bold,
                              foreground: Paint()
                                ..shader = const LinearGradient(colors: [
                                  Colors.red,
                                  Colors.blue,
                                ]).createShader(Rect.fromCircle(
                                    center: const Offset(250, 150),
                                    radius: 400))),
                        )),
                  ],
                )
              ],
            )));
  }
}
