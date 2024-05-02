import 'package:assinmentluvit/modules/root/root_view.dart';
import 'package:assinmentluvit/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: AppTheme.darkTheme,
      home: const RootView(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
