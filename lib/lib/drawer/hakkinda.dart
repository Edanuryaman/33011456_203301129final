import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hakkimda extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hakkında'),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 50),
              child: ListView(
                children: [
                  Text(
                    'Bu Uygulama Mobil Uygulama Sınavı İçin Eda Nur Yaman Tarafından Oluşturulmuştur',
                    style: TextStyle(
                        color: Color(0xFF0A1034),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
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
