import 'package:assinmentluvit/data/data.dart';
import 'package:assinmentluvit/models/card_data.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class HomeViewController extends GetxController {
  final carouseController = CarouselController();
  int currentIndex = 0;

  Map<int, List<CardData>> cards = {};

  @override
  void onInit() {
    super.onInit();
    for (int i = 0; i < 3; i++) {
      cards[i] = cardData;
    }
  }
}
