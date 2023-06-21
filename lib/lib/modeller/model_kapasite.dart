import 'package:flutter/material.dart';

class KapasiteModel {
  final int kap;
  final bool selected;
  final void Function() onTap;

  const KapasiteModel({
    required this.kap,
    required this.selected,
    required this.onTap,
  });
}

class KapasiteWidget extends StatelessWidget {
  final KapasiteModel model;

  const KapasiteWidget({
    required this.model,
  });

  @override
  Widget kapasite() {
    return GestureDetector(
      onTap: model.onTap,
      child: Container(
        margin: EdgeInsets.only(right: 23),
        child: Text(
          "${model.kap} Gb",
          style: TextStyle(
            color: Color(model.selected ? 0xFF0001FC : 0xFFA7A9BE),
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return kapasite();
  }
}
KapasiteModel kapasite = KapasiteModel(
  kap: 32,
  selected: false,
  onTap: () {
    // İlgili işlemleri yapmak için fonksiyonunuzu burada tanımlayın
  },
);

