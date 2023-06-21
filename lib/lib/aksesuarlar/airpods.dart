import 'package:flutter/material.dart';
import 'package:untitled2/lib/yardımcılar/sepet.dart';
import 'package:untitled2/lib/yardımcılar/geribaslık.dart';

class Airpods extends StatefulWidget {
  @override
  State<Airpods> createState() => _State();
}
class _State extends State<Airpods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    geriBaslik(title: "Apple Airpods", context: context),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          SizedBox(height: 30),
                          Image.asset("images/airp2.png"),
                          SizedBox(height: 80),
                          sepet(),
                        ],
                      ),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

