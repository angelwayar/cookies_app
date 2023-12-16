import 'package:cookies_app/colors.dart';
import 'package:cookies_app/widgets/container_arrow.widget.dart';
import 'package:cookies_app/widgets/premium.widget.dart';
import 'package:flutter/material.dart';

class HorizontalCookieCard extends StatelessWidget {
  const HorizontalCookieCard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.14,
          decoration: const BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
              bottomLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(75.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('assets/3.png'),
                ),
                const Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Double\nchocolate',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                        Premium(),
                      ],
                    ),
                    SizedBox(width: 24.0),
                    Column(
                      children: [
                        Text(
                          '20 USD',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        Text(
                          '12 USD',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4.0),
                      ],
                    )
                  ],
                )
              ],
            ),
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
