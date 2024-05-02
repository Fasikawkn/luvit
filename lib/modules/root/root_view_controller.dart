import 'package:assinmentluvit/modules/home_view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/placeholder_widget.dart';

class RootViewController extends GetxController {

  int currentIndex = 0;
  List<Widget> pages = [
    const HomeView(),
    const PlaceholderWidget('스팟'),
    const PlaceholderWidget('채팅'),
    const PlaceholderWidget('마이'),
    
   
  ];

  final pageController = PageController();
}
