import 'package:flutter/material.dart';

class NaturalLanguage extends StatelessWidget {
  const NaturalLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(12.0),
        padding: const EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueAccent, width: 3),
          borderRadius:
          const BorderRadius.all(Radius.circular(10.0)),
        ),
        child: const Text(
          'Natural Language',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}