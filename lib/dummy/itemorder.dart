import 'package:flutter/material.dart';
import 'package:show_bakso/template/order.dart';


class ItemOrder extends StatelessWidget {
  const ItemOrder({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          OrderCard(
            name: "Paket Bakso 1",
            harga: "30.000",
            image: "assets/images/detail_bakso.png",
          ),
           OrderCard(
            name: "Paket Bakso 1",
            harga: "30.000",
            image: "assets/images/detail_bakso.png",
          )
        ],
      ),
    );
  }
}