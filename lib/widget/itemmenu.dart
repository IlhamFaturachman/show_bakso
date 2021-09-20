import 'package:flutter/material.dart';
import 'package:show_bakso/widget/menu.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MenuCard(
            image: "assets/images/baksolast.png",
            name: "Paket Bakso 1",
            harga: "Rp 30.000",
            jumlah: "2",
          ),
          MenuCard(
            image: "assets/images/baksolast.png",
            name: "Paket Bakso 2",
            harga: "Rp 25.000",
            jumlah: "2",
          ),
          MenuCard(
            image: "assets/images/baksolast.png",
            name: "Paket Bakso 3",
            harga: "Rp 15.000",
            jumlah: "",
          ),
          MenuCard(
            image: "assets/images/baksolast.png",
            name: "Paket Bakso 3",
            harga: "Rp 15.000",
            jumlah: "",
          ),
          MenuCard(
            image: "assets/images/baksolast.png",
            name: "Paket Bakso 4",
            harga: "Rp 14.000",
            jumlah: "",
          ),
        ],
      ),
    );
  }
}
