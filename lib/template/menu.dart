import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:show_bakso/screens/detail_pesanan.dart';

// ignore: must_be_immutable
class MenuCard extends StatefulWidget {
  final String image, name, harga;
  int jumlah;

  MenuCard({Key key, this.image, this.name, this.harga, this.jumlah})
      : super(key: key);

  @override
  _MenuCardState createState() => _MenuCardState();
}

class _MenuCardState extends State<MenuCard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
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
                                    image: AssetImage(widget.image),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    widget.name,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        decoration: TextDecoration.none),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    child: Text(
                                      widget.harga,
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.grey,
                                          decoration: TextDecoration.none),
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
                        padding: EdgeInsets.only(left: size.width * 0.05),
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
                                  if (widget.jumlah > 0) {
                                    widget.jumlah--;
                                  }
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.03),
                      child: Container(
                        width: size.width * 0.03,
                        child: Text(
                          widget.jumlah.toString(),
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.jumlah++;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: size.width * 0.03),
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
                  setState(() {
                    if (widget.jumlah > 0) {
                      // ignore: unused_local_variable
                      List<Map<String, dynamic>> order1 = [];
                      order1 = [
                        {'Nama': widget.name},
                        {'Harga': widget.harga},
                        {'Jumlah': widget.jumlah},
                      ];
                    }
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPesanan(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: size.height * 0.05, right: size.width * 0.05),
                  child: Container(
                    width: size.width * 0.92,
                    height: 68.41,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xffEA8F06),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(left: size.width * 0.05, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "5 menu",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: size.width * 0.05,
                                    fontFamily: 'Poppins'),
                              ),
                              Text(
                                "klik untuk melanjutkan",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: size.width * 0.03,
                                    fontFamily: 'Poppins'),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: size.width * 0.15),
                          child: Container(
                            child: Text(
                              "Rp 135.000",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.width * 0.05,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
