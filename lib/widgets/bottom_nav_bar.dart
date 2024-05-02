import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar(
      {super.key, required this.initialIndex, required this.onChanged});
  final int initialIndex;
  final Function(int) onChanged;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  @override
  void initState() {
    _currentIndex = widget.initialIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BottomNavbarPainter(),
      child: SizedBox(
        height: 90,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 65,
                margin: const EdgeInsets.only(top: 1),
                decoration: BoxDecoration(
                  color: Get.theme.colorScheme.primary,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    BottomNavbarIconButton(
                      selectedIcon: 'assets/images/active_home_icon.png',
                      unSelectedIcon: 'assets/images/inactive_home_icon.png',
                      width: 25,
                      onPressed: () {
                        setState(() {
                          _currentIndex = 0;
                          widget.onChanged(_currentIndex);
                        });
                      },
                      isSelected: _currentIndex == 0,
                      label: '홈',
                    ),
                    BottomNavbarIconButton(
                      selectedIcon: 'assets/images/active_location_icon.png',
                      unSelectedIcon:
                          'assets/images/inactive_location_icon.png',
                      onPressed: () {
                        setState(() {
                          _currentIndex = 1;
                          widget.onChanged(_currentIndex);
                        });
                      },
                      isSelected: _currentIndex == 1,
                      label: '스팟',
                    ),
                    Expanded(child: Container()),
                    BottomNavbarIconButton(
                      selectedIcon: 'assets/images/active_chat_icon.png',
                      unSelectedIcon: 'assets/images/inactive_chat_icon.png',
                      width: 25,
                      onPressed: () {
                        setState(() {
                          _currentIndex = 2;
                          widget.onChanged(_currentIndex);
                        });
                      },
                      isSelected: _currentIndex == 2,
                      label: '채팅',
                    ),
                    BottomNavbarIconButton(
                      selectedIcon: 'assets/images/active_person_icon.png',
                      unSelectedIcon: 'assets/images/inactive_person_icon.png',
                      onPressed: () {
                        setState(() {
                          _currentIndex = 3;
                          widget.onChanged(_currentIndex);
                        });
                      },
                      isSelected: _currentIndex == 3,
                      label: '마이',
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.transparent,
                child: SvgPicture.asset(
                  'assets/images/star_icon.svg',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BottomNavbarIconButton extends StatelessWidget {
  const BottomNavbarIconButton({
    super.key,
    required this.onPressed,
    required this.isSelected,
    required this.label,
    required this.selectedIcon,
    required this.unSelectedIcon,
    this.width = 20,
  });
  final Function() onPressed;
  final bool isSelected;
  final String label;
  final String selectedIcon;
  final String unSelectedIcon;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: IconButton(
        icon: Column(
          children: [
            Image.asset(
              isSelected ? selectedIcon : unSelectedIcon,
              width: width,
            ),
            Text(
              label,
              style: Get.theme.textTheme.bodySmall?.copyWith(
                color: isSelected
                    ? Get.theme.colorScheme.surface
                    : Get.theme.colorScheme.secondary,
              ),
            )
          ],
        ),
        onPressed: onPressed,
      ),
    );
  }
}

class BottomNavbarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5584718, size.height * 0.1063830);
    path_0.lineTo(size.width * 0.9692308, size.height * 0.1063830);
    path_0.cubicTo(size.width * 0.9862231, size.height * 0.1063830, size.width,
        size.height * 0.1635383, size.width, size.height * 0.2340426);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(0, size.height);
    path_0.lineTo(0, size.height * 0.2340426);
    path_0.cubicTo(
        0,
        size.height * 0.1635383,
        size.width * 0.01377585,
        size.height * 0.1063830,
        size.width * 0.03076923,
        size.height * 0.1063830);
    path_0.lineTo(size.width * 0.4415282, size.height * 0.1063830);
    path_0.cubicTo(size.width * 0.4560538, size.height * 0.04097574,
        size.width * 0.4768744, 0, size.width * 0.5000000, 0);
    path_0.cubicTo(
        size.width * 0.5231256,
        0,
        size.width * 0.5439462,
        size.height * 0.04097574,
        size.width * 0.5584718,
        size.height * 0.1063830);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.black.withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
