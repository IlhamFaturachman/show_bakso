import 'package:flutter/material.dart';
import 'package:show_bakso/model/menuModel.dart';
import 'package:show_bakso/template/menu.dart';

class MenuItem extends StatefulWidget {
  const MenuItem({Key key}) : super(key: key);

  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  int jumlah = 0;
  // List<Map<String, dynamic>> order1 = [
  //   {'name': 'Paket bakso 1','harga': 'Rp. 30000', 'jumlah':0 },
  //   {'name': 'Paket bakso 1','harga': 'Rp. 25000','jumlah':0},
  // ];

  List<MenuModel> order;


  // void solveArray(){
  //   for (var i = 0; i < order1.length; i++) {
  //     MenuCard(order1[i].name)
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
        
        
          // MenuCard(
          //   image: "assets/images/baksolast.png",
          //   name: "Paket Bakso 1",
          //   harga: "Rp 30.000",
          //   jumlah: jumlah,
          // ),
          // MenuCard(
          //   image: "assets/images/baksolast.png",
          //   name: "Paket Bakso 2",
          //   harga: "Rp 25.000",
          //   jumlah: jumlah
          // ),
          // MenuCard(
          //   image: "assets/images/baksolast.png",
          //   name: "Paket Bakso 3",
          //   harga: "Rp 15.000",
          //   jumlah: jumlah,
          // ),
          // MenuCard(
          //   image: "assets/images/baksolast.png",
          //   name: "Paket Bakso 3",
          //   harga: "Rp 15.000",
          //   jumlah: jumlah,
          // ),
          // MenuCard(
          //   image: "assets/images/baksolast.png",
          //   name: "Paket Bakso 4",
          //   harga: "Rp 14.000",
          //   jumlah: jumlah,
          // ),
        ],
      ),
    );
  }
}
