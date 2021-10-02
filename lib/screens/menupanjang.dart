import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:show_bakso/model/menuModel.dart';
import 'package:show_bakso/screens/detail_pesanan.dart';
import 'package:show_bakso/widget/ButtonMenu.dart';

import 'Map2.dart';

class Menupanjang extends StatefulWidget {
  @override
  _MenupanjangState createState() => _MenupanjangState();
}

class _MenupanjangState extends State<Menupanjang> {
  Bakso menu1 = Bakso(
      jumlah: 0,
      name: "Paket Bakso 1",
      image: "assets/images/baksolast.png",
      harga: 16000);

  Bakso menu2 = Bakso(
      jumlah: 0,
      name: "Paket Bakso 2",
      image: "assets/images/baksolast.png",
      harga: 15000);

  Bakso menu3 = Bakso(
      jumlah: 0,
      name: "Paket Bakso 3",
      image: "assets/images/baksolast.png",
      harga: 16000);

  Bakso menu4 = Bakso(
      jumlah: 0,
      name: "Paket Bakso 4",
      image: "assets/images/baksolast.png",
      harga: 16000);

  Bakso menu5 = Bakso(
      jumlah: 0,
      name: "Paket Bakso 5",
      image: "assets/images/baksolast.png",
      harga: 16000);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: size.width * 0.05),
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, size.height * 0.1, 0, 0),
                  child: Container(
                    width: size.width * 0.9,
                    height: size.height * 0.1,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Container(
                            width: 63.33,
                            height: 63.33,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/jarumbapakfix.jpg"))),
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Selamat Siang ",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontFamily: 'Poppins'),
                                      ),
                                      TextSpan(
                                        text: "Ade!",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: const Color(0xffEA8F06),
                                            fontFamily: 'Poppins'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Penjualan mu sedikit lagi memenuhi target, semangat!",
                                  style: TextStyle(
                                      fontSize: 8, fontFamily: 'Poppins'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: size.width * 0.95,
                  height: size.height * 0.1,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Peta2(),
                            ),
                          );
                        },
                        child: Container(
                          width: size.width * 0.4,
                          height: 65.78,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 10,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              )
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: size.width * 0.05),
                                  child: Icon(
                                    CupertinoIcons.arrow_left,
                                    color: const Color(0xffEA8F06),
                                    size: 40,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: size.width * 0.04),
                                child: Container(
                                  child: Text(
                                    "Batal",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                        fontFamily: 'Poppins'),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.05),
                        child: Container(
                          width: size.width * 0.45,
                          height: 65.78,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 10,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              )
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 23, left: size.width * 0.02),
                                    child: Container(
                                      width: 49.72,
                                      height: 26.61,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/mangkuk.jpg"),
                                            fit: BoxFit.fill),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.035),
                                    child: Container(
                                      child: Text(
                                        "18",
                                        style: TextStyle(fontSize: 32.34),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 15, left: size.width * 0.035),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        "total transaksi",
                                        style: TextStyle(
                                            fontSize: size.width * 0.028,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins'),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Container(
                                        child: Text(
                                          "Rp 200.000",
                                          style: TextStyle(
                                              fontSize: size.width * 0.04,
                                              color: Colors.grey,
                                              fontFamily: 'Poppins'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.04),
                  child: Container(
                    width: size.width * 0.9,
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: size.height * 0.03),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  width: size.width * 0.52,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 7,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      )
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 5,
                                          left: 5,
                                          bottom: 5,
                                        ),
                                        child: Container(
                                          width: 69,
                                          height: 53,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(menu1.image),
                                                fit: BoxFit.fill),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 0, left: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text(
                                                menu1.name,
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    decoration:
                                                        TextDecoration.none),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 5),
                                              child: Container(
                                                child: Text(
                                                  NumberFormat.currency(
                                                          locale: 'id',
                                                          symbol: 'Rp ',
                                                          decimalDigits: 0)
                                                      .format(num.parse(menu1
                                                          .harga
                                                          .toString())),
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.grey,
                                                      decoration:
                                                          TextDecoration.none),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    //bapak
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.05),
                                    child: Container(
                                      width: 42,
                                      height: 42,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 3,
                                          color: const Color(0xffEA8F06),
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: GestureDetector(
                                          child: Icon(
                                            CupertinoIcons.minus,
                                            color: Colors.black,
                                            size: 30,
                                          ),
                                          onTap: () {
                                            setState(() {
                                              if (menu1.jumlah > 0) {
                                                menu1.jumlah--;
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: size.width * 0.03),
                                  child: Container(
                                    width: size.width * 0.03,
                                    child: Text(
                                      menu1.jumlah.toString(),
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      menu1.jumlah++;
                                    });
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.03),
                                    child: Container(
                                      width: 42,
                                      height: 42,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 3,
                                          color: const Color(0xffEA8F06),
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          CupertinoIcons.add,
                                          color: Colors.black,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: size.height * 0.03),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  width: size.width * 0.52,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 7,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      )
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 5,
                                          left: 5,
                                          bottom: 5,
                                        ),
                                        child: Container(
                                          width: 69,
                                          height: 53,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(menu2.image),
                                                fit: BoxFit.fill),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 0, left: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text(
                                                menu2.name,
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    decoration:
                                                        TextDecoration.none),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 5),
                                              child: Container(
                                                child: Text(
                                                  NumberFormat.currency(
                                                          locale: 'id',
                                                          symbol: 'Rp ',
                                                          decimalDigits: 0)
                                                      .format(num.parse(menu2
                                                          .harga
                                                          .toString())),
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.grey,
                                                      decoration:
                                                          TextDecoration.none),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    //bapak
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.05),
                                    child: Container(
                                      width: 42,
                                      height: 42,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 3,
                                          color: const Color(0xffEA8F06),
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: GestureDetector(
                                          child: Icon(
                                            CupertinoIcons.minus,
                                            color: Colors.black,
                                            size: 30,
                                          ),
                                          onTap: () {
                                            setState(() {
                                              if (menu2.jumlah > 0) {
                                                menu2.jumlah--;
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: size.width * 0.03),
                                  child: Container(
                                    width: size.width * 0.03,
                                    child: Text(
                                      menu2.jumlah.toString(),
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      menu2.jumlah++;
                                    });
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.03),
                                    child: Container(
                                      width: 42,
                                      height: 42,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 3,
                                          color: const Color(0xffEA8F06),
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          CupertinoIcons.add,
                                          color: Colors.black,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: size.height * 0.03),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  width: size.width * 0.52,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 7,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      )
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 5,
                                          left: 5,
                                          bottom: 5,
                                        ),
                                        child: Container(
                                          width: 69,
                                          height: 53,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(menu3.image),
                                                fit: BoxFit.fill),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 0, left: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text(
                                                menu3.name,
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    decoration:
                                                        TextDecoration.none),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 5),
                                              child: Container(
                                                child: Text(
                                                  NumberFormat.currency(
                                                          locale: 'id',
                                                          symbol: 'Rp ',
                                                          decimalDigits: 0)
                                                      .format(num.parse(menu3
                                                          .harga
                                                          .toString())),
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.grey,
                                                      decoration:
                                                          TextDecoration.none),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    //bapak
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.05),
                                    child: Container(
                                      width: 42,
                                      height: 42,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 3,
                                          color: const Color(0xffEA8F06),
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: GestureDetector(
                                          child: Icon(
                                            CupertinoIcons.minus,
                                            color: Colors.black,
                                            size: 30,
                                          ),
                                          onTap: () {
                                            setState(() {
                                              if (menu3.jumlah > 0) {
                                                menu3.jumlah--;
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: size.width * 0.03),
                                  child: Container(
                                    width: size.width * 0.03,
                                    child: Text(
                                      menu3.jumlah.toString(),
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      menu3.jumlah++;
                                    });
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.03),
                                    child: Container(
                                      width: 42,
                                      height: 42,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 3,
                                          color: const Color(0xffEA8F06),
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          CupertinoIcons.add,
                                          color: Colors.black,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: size.height * 0.03),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  width: size.width * 0.52,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 7,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      )
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 5,
                                          left: 5,
                                          bottom: 5,
                                        ),
                                        child: Container(
                                          width: 69,
                                          height: 53,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(menu4.image),
                                                fit: BoxFit.fill),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 0, left: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text(
                                                menu4.name,
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    decoration:
                                                        TextDecoration.none),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 5),
                                              child: Container(
                                                child: Text(
                                                  NumberFormat.currency(
                                                          locale: 'id',
                                                          symbol: 'Rp ',
                                                          decimalDigits: 0)
                                                      .format(num.parse(menu4
                                                          .harga
                                                          .toString())),
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.grey,
                                                      decoration:
                                                          TextDecoration.none),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    //bapak
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.05),
                                    child: Container(
                                      width: 42,
                                      height: 42,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 3,
                                          color: const Color(0xffEA8F06),
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: GestureDetector(
                                          child: Icon(
                                            CupertinoIcons.minus,
                                            color: Colors.black,
                                            size: 30,
                                          ),
                                          onTap: () {
                                            setState(() {
                                              if (menu4.jumlah > 0) {
                                                menu4.jumlah--;
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: size.width * 0.03),
                                  child: Container(
                                    width: size.width * 0.03,
                                    child: Text(
                                      menu4.jumlah.toString(),
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      menu4.jumlah++;
                                    });
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.03),
                                    child: Container(
                                      width: 42,
                                      height: 42,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 3,
                                          color: const Color(0xffEA8F06),
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          CupertinoIcons.add,
                                          color: Colors.black,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: size.height * 0.03),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  width: size.width * 0.52,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 7,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      )
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 5,
                                          left: 5,
                                          bottom: 5,
                                        ),
                                        child: Container(
                                          width: 69,
                                          height: 53,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(menu5.image),
                                                fit: BoxFit.fill),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 0, left: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text(
                                                menu5.name,
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    decoration:
                                                        TextDecoration.none),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 5),
                                              child: Container(
                                                child: Text(
                                                  NumberFormat.currency(
                                                          locale: 'id',
                                                          symbol: 'Rp ',
                                                          decimalDigits: 0)
                                                      .format(num.parse(menu5
                                                          .harga
                                                          .toString())),
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.grey,
                                                      decoration:
                                                          TextDecoration.none),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    //bapak
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.05),
                                    child: Container(
                                      width: 42,
                                      height: 42,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 3,
                                          color: const Color(0xffEA8F06),
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: GestureDetector(
                                          child: Icon(
                                            CupertinoIcons.minus,
                                            color: Colors.black,
                                            size: 30,
                                          ),
                                          onTap: () {
                                            setState(() {
                                              if (menu5.jumlah > 0) {
                                                menu5.jumlah--;
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: size.width * 0.03),
                                  child: Container(
                                    width: size.width * 0.03,
                                    child: Text(
                                      menu5.jumlah.toString(),
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      menu5.jumlah++;
                                    });
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.03),
                                    child: Container(
                                      width: 42,
                                      height: 42,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 3,
                                          color: const Color(0xffEA8F06),
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          CupertinoIcons.add,
                                          color: Colors.black,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: size.height * 0.04, bottom: size.height * 0.04),
                  child: Container(
                    width: size.width * 0.9,
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailPesanan(menu1, menu2, menu3, menu4, menu5),
                      ),
                    );
                  },
                  child: ButtonMenu(menu1, menu2, menu3, menu4, menu5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
