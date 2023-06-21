import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Yardim extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yardım'),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0 , vertical: 150),

              child: ListView(
                children: [
                  Text(
                    'Yardım almak için edanur.yaman1268@gmail adresine ulaşınız',
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