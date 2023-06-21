import 'package:flutter/material.dart';

import '../aksesuarlar/airpods.dart';
import '../aksesuarlar/hoparlor.dart';
import '../aksesuarlar/klavye.dart';
import '../aksesuarlar/stand.dart';
import '../modeller/model_kategori.dart';
import '../telefonlar/telapple.dart';
import '../telefonlar/teloppo.dart';
import '../telefonlar/telsamsung.dart';
import '../telefonlar/telxiaomi.dart';
import '../yardımcılar/geribaslık.dart';

class Telefonlar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [
                  geriBaslik(title: "Telefonlar", context: context),
                  //içerik
                  SizedBox(
                    height: 18,
                  ),
                  //içerik
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      KatagoriIcerik(
                          baslik: "Apple",
                          foto: "images/tapple.png",
                          fiyat: "22499 TL",widget:TelApple() ,context: context),
                      SizedBox(
                        width: 30,
                      ),
                      KatagoriIcerik(
                          baslik: "Oppo",
                          foto: "images/toppo.png",
                          fiyat: "6999 TL",widget:TelOppo() ,context: context),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      KatagoriIcerik(
                          baslik: "Samsung",
                          foto: "images/tsamsung.png",
                          fiyat: "12000 TL",widget:TelSamsung() ,context: context),
                      SizedBox(
                        width: 30,
                      ),
                      KatagoriIcerik(
                          baslik: "Xiaomi",
                          foto: "images/txaomi.png",
                          fiyat: "11500 TL",widget:TelXiaomi() ,context: context),
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