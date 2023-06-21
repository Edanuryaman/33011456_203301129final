import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../yardımcılar/geribaslık.dart';
import '../yardımcılar/renkler.dart';
import '../yardımcılar/sepet.dart';
import '../yardımcılar/textdepo.dart';
import '../yardımcılar/textrenkler.dart';
import '../yardımcılar/kapasite.dart';

class TabApple extends StatefulWidget {
  @override
  State<TabApple> createState() => _State();
}

class _State extends State<TabApple> {
  Color?selectedColor=Color(0xFFB0BEC5) ;
  int? selectedcapasity=128;
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
                    geriBaslik(title: "Apple iPad Pro 4.Nesil", context: context),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Image.asset("images/tabapple2.png"),
                          SizedBox(height: 30),
                          //RENKLER
                          textrenk(),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              renkler(
                                  color: Color(0xFF455A64),
                                  selected: selectedColor == Color(0xFF455A64),
                                  ontap: () {
                                    setState(() {
                                      selectedColor = Color(0xFF455A64);
                                    });
                                  }),
                              renkler(
                                  color: Color(0xFFB0BEC5),
                                  selected: selectedColor == Color(0xFFB0BEC5),
                                  ontap: () {
                                    setState(() {
                                      selectedColor = Color(0xFFB0BEC5);
                                    });
                                  }),

                            ],
                          ),
                          SizedBox(height: 32),
                          //KAPASİTE
                          textdepo(),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              kapasite(
                                  kap: 128,
                                  selected: selectedcapasity == 128,
                                  ontap: () {
                                    setState(() {
                                      selectedcapasity = 128;
                                    });
                                  }),
                              kapasite(
                                  kap: 256,
                                  selected: selectedcapasity == 256,
                                  ontap: () {
                                    setState(() {
                                      selectedcapasity = 256;
                                    });
                                  }),
                              kapasite(
                                  kap: 512,
                                  selected: selectedcapasity == 512,
                                  ontap: () {
                                    setState(() {
                                      selectedcapasity = 512;
                                    });
                                  }),
                              kapasite(
                                  kap: 1024,
                                  selected: selectedcapasity == 1024,
                                  ontap: () {
                                    setState(() {
                                      selectedcapasity = 1024;
                                    });
                                  }),
                            ],
                          ),

                          //SEPETE EKLE
                          SizedBox(height: 32),
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
