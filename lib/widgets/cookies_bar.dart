import 'package:cookies_app/colors.dart';
import 'package:flutter/material.dart';

class CookiesBar extends StatelessWidget {
  const CookiesBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Cookies',
          style: TextStyle(color: Colors.white, fontSize: 42.0),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Premium',
              style: TextStyle(color: orange, fontSize: 30.0),
            ),
            Spacer(),
            Text(
              'See more',
              style: TextStyle(color: orange, fontSize: 16.0),
            ),
          ],
        ),
      ],
    );
  }
}
