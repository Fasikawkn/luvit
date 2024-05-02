import 'package:assinmentluvit/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'root_view_controller.dart';

class RootView extends GetView<RootViewController> {
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => RootViewController());
    return GetBuilder<RootViewController>(
      builder: (_) {
        return Scaffold(
          body: PageView(
            controller: controller.pageController,
            children: controller.pages,
          ),
          bottomNavigationBar: BottomNavBar(
            initialIndex: controller.currentIndex,
            onChanged: (index) {
              controller.currentIndex = index;
              controller.pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
          ),
        );
      },
    );
  }
}
