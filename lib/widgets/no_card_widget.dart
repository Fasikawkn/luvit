import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NoCardWidget extends StatelessWidget {
  const NoCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '추천 드릴 친구들을 준비 중이에요',
          style: Get.textTheme.bodyLarge,
        ),
        const SizedBox(height: 10),
        Text(
          '매일 새로운 친구들을 소개시켜드려요',
          style: Get.textTheme.bodySmall?.copyWith(
            color: Get.theme.colorScheme.onSecondary,
          ),
        ),
      ],
    );
  }
}
