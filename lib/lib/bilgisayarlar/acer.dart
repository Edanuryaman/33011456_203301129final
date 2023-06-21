import 'package:flutter/material.dart';

import '../yardımcılar/geribaslık.dart';
import '../yardımcılar/kapasite.dart';
import '../yardımcılar/renkler.dart';
import '../yardımcılar/sepet.dart';
import '../yardımcılar/textdepo.dart';
import '../yardımcılar/textrenkler.dart';

class BilAcer extends StatefulWidget {
  @override
  State<BilAcer> createState() => _State();
}

class _State extends State<BilAcer> {
  Color ?  selectedColor = Colors.black;
  int ? selectedcapasity =256;
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
                    geriBaslik(title: "Acer A315-23", context: context),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Image.asset("images/bacer2.png"),
                          SizedBox(height: 30),
                          //RENKLER
                          textrenk(),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              renkler(
                                  color: Colors.black,
                                  selected: selectedColor == Colors.black,
                                  ontap: () {
                                    setState(() {
                                      selectedColor = Colors.black;
                                    });
                                  }),
                              renkler(
                                  color: Color(0xFFDDDDDD),
                                  selected: selectedColor == Color(0xFFDDDDDD),
                                  ontap: () {
                                    setState(() {
                                      selectedColor = Color(0xFFDDDDDD);
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
