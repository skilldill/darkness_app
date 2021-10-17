import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DarknessPage extends ModalRoute {
  final Widget child;

  DarknessPage({
    required this.child,
  }) : super();

  @override
  Color? get barrierColor => Colors.black;

  @override
  String? get barrierLabel => null;

  @override
  bool get barrierDismissible => false;

  @override
  Curve get barrierCurve => super.barrierCurve;

  @override
  bool get maintainState => true;

  @override
  bool get opaque => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 450);

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
          onHorizontalDragEnd: (details) {
            if (details.velocity.pixelsPerSecond.dx > 0) {
              Navigator.of(context).pop();
            }
          },
          child: child),
    ));
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}
