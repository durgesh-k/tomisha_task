import 'dart:math';

import 'package:flutter/material.dart';

// This widget creates a wave edge for  a container

class WaveContainer extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  bool? forMobile;
  final Widget? child;

  WaveContainer(
      {required this.height,
      required this.width,
      required this.color,
      required this.forMobile,
      this.child});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipper(forMobile: forMobile),
      child: Container(
        height: height,
        width: width,
        color: color,
        child: child,
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  bool? forMobile;
  WaveClipper({this.forMobile});

  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0, size.height);

    for (double i = 0; i < size.width; i++) {
      final x = i;
      if (forMobile!) {
        final y = sin(i * pi / 180 + 90) * 20 + size.height * 0.9;
        path.lineTo(x, y);
      } else {
        final y = sin(i * pi / 180 + 90) * 5 + size.height * 0.9;
        path.lineTo(x, y);
      }
    }

    path.lineTo(size.width, size.height * 0.5);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(WaveClipper oldClipper) => false;
}
