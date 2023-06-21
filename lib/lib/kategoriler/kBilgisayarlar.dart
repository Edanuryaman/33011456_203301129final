import 'package:flutter/material.dart';

import '../bilgisayarlar/acer.dart';
import '../bilgisayarlar/bilapple.dart';
import '../bilgisayarlar/huawei.dart';
import '../bilgisayarlar/monster.dart';
import '../modeller/model_kategori.dart';
import '../yardımcılar/geribaslık.dart';

class Bilgisayarlar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [
                  geriBaslik(title: "Bilgisayarlar", context: context),
                  SizedBox(
                    height: 18,
                  ),
                  //içerik
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      KatagoriIcerik(
                        baslik: "Apple",
                        foto: "images/bapple.png",
                        fiyat: "18999 TL",widget: BilApple(),
                        context: context,),
                      SizedBox(
                        width: 30,
                      ),
                      KatagoriIcerik(
                        baslik: "Monster",
                        foto: "images/bmonster.png",
                        fiyat: "15000 TL",widget: BilMonster(),
                        context: context,),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      KatagoriIcerik(
                        baslik: "Huawei ",
                        foto: "images/bhuawei.png",
                        fiyat: "13000 TL",widget: BilHuawei(),
                        context: context,),
                      SizedBox(
                        width: 30,
                      ),
                      KatagoriIcerik(
                        baslik: "Acer ",
                        foto: "images/bacer.png",
                        fiyat: "12000 TL",widget: BilAcer(),
                        context: context,),
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