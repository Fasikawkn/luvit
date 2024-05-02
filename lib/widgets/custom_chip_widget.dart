import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomChipWidget extends StatelessWidget {
  const CustomChipWidget({
    super.key,
    required this.label,
    this.icon,
    this.color,
    this.image,
    this.backgroundColor,
    this.hasBorder = false,
  });
  final String label;
  final IconData? icon;
  final Color? color;
  final String? image;
  final Color? backgroundColor;
  final bool hasBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
      decoration: BoxDecoration(
        color: backgroundColor ?? Get.theme.colorScheme.onTertiary,
        borderRadius: BorderRadius.circular(20),
        border: hasBorder
            ? Border.all(
                color: color ?? Get.theme.colorScheme.secondary,
              )
            : null,
      ),
      child: Row(
        children: [
          icon != null || image != null
              ? Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: image != null
                      ? Image.asset(
                          image!,
                          width: 15,
                        )
                      : Icon(
                          icon,
                          color: Get.theme.colorScheme.secondary,
                          size: 15,
                        ),
                )
              : const SizedBox.shrink(),
          Text(
            label,
            style: Get.textTheme.bodySmall?.copyWith(fontSize: 12),
          )
        ],
      ),
    );
  }
}
