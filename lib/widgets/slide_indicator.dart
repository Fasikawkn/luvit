import 'package:flutter/material.dart';

class SlideIndicator extends StatelessWidget {
  const SlideIndicator({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3,
      margin: const EdgeInsets.symmetric(horizontal: 3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
    );
  }
}