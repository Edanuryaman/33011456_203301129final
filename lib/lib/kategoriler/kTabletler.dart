import 'package:flutter/material.dart';

import '../modeller/model_kategori.dart';
import '../tabletler/tabapple.dart';
import '../tabletler/tabhuawei.dart';
import '../tabletler/tabsamsung.dart';
import '../tabletler/tabxiaomi.dart';
import '../yardımcılar/geribaslık.dart';

class Tabletler extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ListView(
                children: [
                  geriBaslik(title: "Tabletler", context: context),
                  //içerik
                  SizedBox(
                    height: 18,
                  ),
                  //içerik
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      KatagoriIcerik(
                          baslik: "Apple",
                          foto: "images/tabapple.png",
                          fiyat: "21500 TL", widget: TabApple(), context: context),
                      SizedBox(
                        width: 30,
                      ),

                      KatagoriIcerik(
                          baslik: "Xiaomi",
                          foto: "images/tabxiaomi.png",
                          fiyat: "6500 TL", widget:TabXiaomi() , context: context),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      KatagoriIcerik(
                          baslik: "Huawei",
                          foto: "images/tabhuawei.png",
                          fiyat: "2000 TL", widget:TabHuawei() , context: context),
                      SizedBox(
                        width: 30,
                      ),
                      KatagoriIcerik(
                          baslik: "Samsung",
                          foto: "images/tabsamsung.png",
                          fiyat: "2650 TL", widget: TabSamsung(), context: context),
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