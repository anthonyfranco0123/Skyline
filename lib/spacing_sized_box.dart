import 'package:flutter/material.dart';

class SpacingSizedBox extends StatelessWidget {
  final double width, height;
  const SpacingSizedBox({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Container(),
    );
  }
}