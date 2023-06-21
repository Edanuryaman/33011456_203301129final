import 'package:flutter/material.dart';

import '../aksesuarlar/airpods.dart';
import '../aksesuarlar/hoparlor.dart';
import '../aksesuarlar/klavye.dart';
import '../aksesuarlar/stand.dart';
import '../modeller/model_kategori.dart';
import '../yardımcılar/geribaslık.dart';

class Aksesuarlar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  geriBaslik(title: "Aksesuarlar", context: context),
                  SizedBox(
                    height: 18,
                  ),
                  //içerik
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      KatagoriIcerik(
                        baslik: "Airpods",
                        foto: "images/airp.png",
                        fiyat: "2999 TL",
                        widget: Airpods(),
                        context: context,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      KatagoriIcerik(
                        baslik: "Hoparlör",
                        foto: "images/aksesuarspeaker.png",
                        fiyat: "2750 TL",
                        widget: Hoparlor(),
                        context: context,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      KatagoriIcerik(
                        baslik: "Bilgisayar standı",
                        foto: "images/aksesuar.png",
                        fiyat: "550 TL",
                        widget: Stant(),
                        context: context,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      KatagoriIcerik(
                        baslik: "Klavye",
                        foto: "images/aksesuarklavye.png",
                        fiyat: "100 TL",
                        widget: Klavye(),
                        context: context,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      KatagoriIcerik(
                        baslik: "Bilgisayar standı",
                        foto: "images/aksesuar.png",
                        fiyat: "550 TL",
                        widget: Stant(),
                        context: context,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      KatagoriIcerik(
                        baslik: "Klavye",
                        foto: "images/aksesuarklavye.png",
                        fiyat: "100 TL",
                        widget: Klavye(),
                        context: context,
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

