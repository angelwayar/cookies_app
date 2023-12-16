import 'package:flutter/material.dart';

import '../colors.dart';
import 'nav_bar_buttton.widget.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;
  double ypos = 0.0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 60.0,
          decoration: const BoxDecoration(
            color: navBarcolor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(45.0)),
          ),
        ),
        Positioned.fill(
          top: -25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => setState(() {
                  index = 0;
                  ypos = size.width / 3;
                }),
                child: NavBarButton(
                  icon: 'assets/home.png',
                  text: 'Home',
                  isSelected: index == 0,
                ),
              ),
              const SizedBox(width: 40.0),
              GestureDetector(
                onTap: () => setState(() {
                  index = 1;
                  ypos = size.width / 3 + 90;
                }),
                child: NavBarButton(
                  icon: 'assets/search.png',
                  text: 'Search',
                  isSelected: index == 1,
                ),
              ),
              const SizedBox(width: 40.0),
              GestureDetector(
                onTap: () => setState(() {
                  index = 2;
                  ypos = size.width / 3 + 180;
                }),
                child: NavBarButton(
                  icon: 'assets/premium.png',
                  text: 'Premium',
                  isSelected: index == 2,
                ),
              ),
            ],
          ),
        ),
        AnimatedPositioned(
          duration: const Duration(milliseconds: 200),
          top: -50.0,
          left: ypos == 0 ? (size.width / 3) : ypos,
          child: Container(
            height: 10.0,
            width: 10.0,
            decoration: const BoxDecoration(
              color: orange,
              shape: BoxShape.circle,
            ),
          ),
        )
      ],
    );
  }
}
