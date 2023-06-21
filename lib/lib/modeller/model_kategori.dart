import 'package:flutter/material.dart';

class KatagoriIcerik extends StatelessWidget {
  final String baslik;
  final String foto;
  final String fiyat;
  final BuildContext context;
  final Widget widget;

  const KatagoriIcerik({
    required this.baslik,
    required this.foto,
    required this.fiyat,
    required this.context,
    required this.widget,
  });

  Widget icerik() { // icerik metodu burada uygulanmalı
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 24,
              offset: Offset(0, 16),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16),
            Image.asset(
              foto,
              width: 150,
              height: 120,
            ),
            SizedBox(height: 42),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  baslik,
                  style: TextStyle(
                    color: Color(0xFF0A1034),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  fiyat,
                  style: TextStyle(
                    color: Color(0xFF0001FC),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return icerik(); // icerik metodu çağrılmalı
  }
}