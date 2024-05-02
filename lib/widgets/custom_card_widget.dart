import 'package:assinmentluvit/models/card_data.dart';
import 'package:assinmentluvit/widgets/slide_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'card_content_widget.dart';

class CustomCardWidget extends StatefulWidget {
  const CustomCardWidget({
    super.key,
    required this.card,
    required this.isActive,
  });
  final List<CardData> card;
  final bool isActive;

  @override
  State<CustomCardWidget> createState() => _CustomCardWidgetState();
}

class _CustomCardWidgetState extends State<CustomCardWidget> {
  int currentIndex = 0;
  final carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          carouselController: carouselController,
          itemCount: widget.card.length,
          options: CarouselOptions(
            autoPlay: widget.isActive,
            height: Get.height,
            viewportFraction: 1.0,
            scrollPhysics: const NeverScrollableScrollPhysics(),
            onPageChanged: ((index, reason) {
              setState(() {
                currentIndex = index;
              });
            }),
          ),
          itemBuilder: (context, index, realIndex) {
            return CardContentWidget(
              cardData: widget.card[index],
              onNext: () {
                carouselController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear,
                );
              },
              onPrevious: () {
                carouselController.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear,
                );
              },
              currentIndex: currentIndex = widget.card[index].id,
            );
          },
        ),
        buildIndicator(),
      ],
    );
  }

  Widget buildIndicator() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
        child: Row(
          children: widget.card
              .map(
                (slide) => Expanded(
                  child: SlideIndicator(
                    color: currentIndex == slide.id
                        ? Get.theme.colorScheme.surface
                        : Get.theme.colorScheme.secondary,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
