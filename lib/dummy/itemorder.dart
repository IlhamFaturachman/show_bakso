import 'package:flutter/material.dart';
import 'package:show_bakso/template/order.dart';

class ItemOrder extends StatefulWidget {
  const ItemOrder({Key key}) : super(key: key);

  @override
  _ItemOrderState createState() => _ItemOrderState();
}



class _ItemOrderState extends State<ItemOrder> {
  int jumlah = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          OrderCard(
            name: "Paket Bakso 1",
            harga: "30.000",
            image: "assets/images/detail_bakso.png",
            jumlah: jumlah,
          ),
          OrderCard(
              name: "Paket Bakso 1",
              harga: "30.000",
              image: "assets/images/detail_bakso.png",
              jumlah: jumlah),
        ],
      ),
    );
  }
}
