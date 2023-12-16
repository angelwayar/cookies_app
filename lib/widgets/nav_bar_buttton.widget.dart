import 'package:flutter/material.dart';

import '../colors.dart';

class NavBarButton extends StatelessWidget {
  const NavBarButton({
    super.key,
    required this.icon,
    required this.text,
    required this.isSelected,
  });

  final String icon;
  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50.0,
          width: 50.0,
          padding: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: buttonColor,
          ),
          child: Image.asset(
            icon,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 4.0),
        Text(
          text,
          style: TextStyle(color: isSelected ? orange : Colors.grey),
        )
      ],
    );
  }
}
