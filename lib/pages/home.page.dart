import 'package:flutter/material.dart';

import '../colors.dart';
import '../models/cookies.dart';
import '../widgets/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: background,
      body: Content(size: size),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Avatar(),
              SizedBox(width: 16.0),
              PersonalInfo(),
              Spacer(),
              Cart()
            ],
          ),
          const CookiesBar(),
          SizedBox(
            height: size.height * 0.12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: cookies
                .map(
                  (e) => CookiesCard(cookie: e),
                )
                .toList(),
          ),
          const OffersBar(),
          const HorizontalCookieCard(),
        ],
      ),
    );
  }
}
