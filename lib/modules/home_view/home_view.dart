import 'package:assinmentluvit/modules/home_view/home_view_controller.dart';
import 'package:assinmentluvit/widgets/custom_card_widget.dart';
import 'package:assinmentluvit/widgets/no_card_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dismissible_page/dismissible_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeViewController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(HomeViewController(), permanent: true);
    return GetBuilder<HomeViewController>(
      builder: (_) {
        return Scaffold(
            appBar: buildAppbar(),
            body: Center(
              child: controller.cards.isEmpty
                  ? const NoCardWidget()
                  : CarouselSlider(
                      carouselController: controller.carouseController,
                      options: CarouselOptions(
                        height: Get.height * 0.75,
                        enableInfiniteScroll: false,
                        onPageChanged: ((index, reason) {
                          controller.currentIndex = index;
                          controller.update();
                        }),
                      ),
                      items: controller.cards.entries
                          .map(
                            (entry) => Builder(
                              builder: (context) {
                                return DismissiblePage(
                                  key: Key(entry.key.toString()),
                                  direction: DismissiblePageDismissDirection.multi,
                                  startingOpacity: 0.5,
                                  onDismissed: () {
                                    controller.cards.remove(entry.key);
                                    controller.update();
                                  },
                                  child: CustomCardWidget(
                                    card: entry.value,
                                    isActive: entry.key == controller.currentIndex,
                                  ),
                                );
                              }
                            ),
                          )
                          .toList(),
                    ),
            ));
      },
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/location_icon.png',
                width: 15,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                '목이길어슬픈기린님의 새로운 스팟',
                style: Get.textTheme.bodySmall?.copyWith(fontSize: 12),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 3.0),
                decoration: BoxDecoration(
                  color: Get.theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Get.theme.colorScheme.secondary,
                  ),
                ),
                child: Row(children: [
                  Icon(
                    Icons.star,
                    color: Get.theme.colorScheme.surface,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    '323,233',
                    style: Get.textTheme.bodySmall?.copyWith(fontSize: 12),
                  )
                ]),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Stack(
                children: [
                  Icon(
                    Icons.notifications_outlined,
                    size: 20.0,
                    color: Get.theme.colorScheme.tertiary,
                  ),
                  Positioned(
                    right: 0,
                    child: CircleAvatar(
                      radius: 2,
                      backgroundColor: Get.theme.colorScheme.surface,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
