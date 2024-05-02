import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../models/card_data.dart';
import 'custom_chip_widget.dart';

class CardContentWidget extends StatelessWidget {
  const CardContentWidget({
    super.key,
    required this.cardData,
    required this.currentIndex,
    required this.onNext,
    required this.onPrevious,
  });
  final CardData cardData;
  final int currentIndex;
  final Function() onNext;
  final Function() onPrevious;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Get.theme.colorScheme.secondary,
        ),
        image: DecorationImage(
          image: AssetImage(cardData.image),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTapDown: (details) {
              if (details.localPosition.dx < Get.width / 2) {
                onPrevious();
              } else {
                onNext();
              }
            },
            child: Container(
              width: Get.width,
              height: Get.height * 0.3,
              color: Colors.transparent,
            ),
          ),
          const Expanded(child: SizedBox()),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Get.theme.colorScheme.secondary,
                ],
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FittedBox(
                              child: CustomChipWidget(
                                icon: Icons.star,
                                backgroundColor: Get.theme.colorScheme.primary,
                                label: NumberFormat('###,###,###,###')
                                    .format(cardData.likeCount),
                              ),
                            ),
                            Text(
                              cardData.title ?? '',
                              style: Get.textTheme.bodyMedium
                                  ?.copyWith(fontSize: 20, height: 2),
                            ),
                            cardData.description != null
                                ? Flexible(
                                    child: Text(
                                      cardData.description!,
                                      style: Get.textTheme.bodyMedium?.copyWith(
                                          color: Get
                                              .theme.colorScheme.onSecondary),
                                    ),
                                  )
                                : const SizedBox.shrink(),
                            cardData.info.isNotEmpty
                                ? Flexible(
                                    child: Wrap(
                                      spacing: 10,
                                      runSpacing: 10,
                                      children: cardData.info
                                          .map(
                                            (info) => FittedBox(
                                              child: CustomChipWidget(
                                                image: info.icon,
                                                label: info.title,
                                                color: info.color,
                                                hasBorder: info.color != null,
                                                backgroundColor:
                                                    info.color != null
                                                        ? info.color!
                                                            .withOpacity(0.2)
                                                        : null,
                                              ),
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  )
                                : const SizedBox.shrink(),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: InkWell(
                          child: Image.asset(
                            'assets/images/heart_icon.png',
                            width: 48,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Transform.rotate(
                    angle: -pi / 2,
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 18,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
