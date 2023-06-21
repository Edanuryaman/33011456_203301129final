import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Ayarlar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ayarlar"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profil"),
            onTap: () {
              // Profil sayfasına yönlendirme yapabilirsiniz.
            },
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text("Gizlilik"),
            onTap: () {
              // Gizlilik sayfasına yönlendirme yapabilirsiniz.
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Bildirimler"),
            onTap: () {
              // Bildirimler sayfasına yönlendirme yapabilirsiniz.
            },
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text("Dil"),
            onTap: () {
              // Dil ayarları sayfasına yönlendirme yapabilirsiniz.
            },
          ),
        ],
      ),
    );
  }
}