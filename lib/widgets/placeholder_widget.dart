import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlaceholderWidget extends StatelessWidget {
  const PlaceholderWidget(
    this.label, {
    super.key,
  });
  final String label;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        label,
        style: Get.textTheme.bodyLarge,
      ),
    );
  }
}
