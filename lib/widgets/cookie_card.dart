import 'package:cookies_app/colors.dart';
import 'package:cookies_app/models/cookies.dart';
import 'package:flutter/material.dart';

import 'container_arrow.widget.dart';
import 'premium.widget.dart';

class CookiesCard extends StatelessWidget {
  const CookiesCard({super.key, required this.cookie});

  final Cookie cookie;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cookieSize = size.height * 0.16;
    var cardSize = size.height * 0.20;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: cardSize,
          width: cardSize,
          decoration: const BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(75.0),
              )),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              top: 32.0,
              right: 32.0,
              bottom: 16.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cookie.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                const Premium(),
                Text(
                  cookie.price,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -(cookieSize - 32.0),
          left: (cardSize - cardSize) / 2,
          child: SizedBox(
            height: cookieSize,
            width: cookieSize,
            child: Image.asset(cookie.image),
          ),
        ),
        const Positioned(
          right: 0,
          bottom: 0,
          child: ContainerArrow(),
        ),
      ],
    );
  }
}
