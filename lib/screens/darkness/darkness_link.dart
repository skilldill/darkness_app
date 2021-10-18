import 'package:darkness/screens/darkness/darkness_page/darkness_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DarknessLink extends AnimatedWidget {
  final Widget figure;
  final String text;
  final Widget to;

  const DarknessLink(
      {Key? key,
      required this.text,
      required this.figure,
      required this.to,
      required Animation<double> animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;

    return GestureDetector(
      onTap: () => Navigator.of(context).push(DarknessPage(child: to)),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 3.6,
        width: MediaQuery.of(context).size.width - 120,
        child: Stack(
          children: [
            Positioned(
              child: Opacity(opacity: animation.value * 0.01, child: figure),
              right: -50,
              top: 50,
            ),
            Positioned(
              top: 100,
              left: animation.value - 100,
              child: Opacity(
                opacity: animation.value * 0.01,
                child: Text(text,
                    style: const TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
