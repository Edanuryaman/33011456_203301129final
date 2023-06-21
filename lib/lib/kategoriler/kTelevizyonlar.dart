import 'package:flutter/material.dart';

import '../modeller/model_kategori.dart';
import '../televizyonlar/tvarcelik.dart';
import '../televizyonlar/tvlg.dart';
import '../televizyonlar/tvphilips.dart';
import '../televizyonlar/tvsamsung.dart';
import '../yardımcılar/geribaslık.dart';

class Televizyonlar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [
                  geriBaslik(title: "Televizyonlar", context: context),
                  //içerik
                  SizedBox(
                    height: 18,
                  ),
                  //içerik
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      KatagoriIcerik(
                          baslik: "Samsung",
                          foto: "images/tvsamsung.png",
                          fiyat: "15999 TL",widget:TvSamsung() ,context: context),
                      SizedBox(
                        width: 30,
                      ),
                      KatagoriIcerik(
                          baslik: "Arçelik",
                          foto: "images/tvarcelik.png",
                          fiyat: "10599 TL",widget:TvArcelik() ,context: context),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      KatagoriIcerik(
                          baslik: "Philips",
                          foto: "images/tvphilip.png",
                          fiyat: "17550 TL",widget:TvPhilips() ,context: context),
                      SizedBox(
                        width: 30,
                      ),
                      KatagoriIcerik(
                          baslik: "LG",
                          foto: "images/tvlg.png",
                          fiyat: "10000 TL",widget:TvLg() ,context: context),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}