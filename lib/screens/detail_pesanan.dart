import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:show_bakso/dummy/itempajak.dart';
import 'package:show_bakso/dummy/itemtotal.dart';
import 'package:show_bakso/dummy/itemtransaksi.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:show_bakso/model/menuModel.dart';
import 'package:show_bakso/screens/jumlah_lain.dart';

import 'Qr.dart';

// ignore: must_be_immutable
class DetailPesanan extends StatefulWidget {
  final String name, harga, image;
  Bakso order;
  int jumlah;

  DetailPesanan(this.order,
      {Key key, this.name, this.harga, this.image, this.jumlah})
      : super(key: key);

  @override
  _DetailPesananState createState() => _DetailPesananState();
}

class _DetailPesananState extends State<DetailPesanan>
    with TickerProviderStateMixin {
      
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          )
        ],
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Detail Pesanan",
          style: TextStyle(color: Colors.black, fontFamily: 'Poppins'),
        ),
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: size.width * 0.05, right: size.width * 0.05),
          child: Container(
            width: size.width * 0.9,
            child: Padding(
              padding: EdgeInsets.only(top: 17),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "DAFTAR PESANAN",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontFamily: 'Poppins'),
                    ),
                    Container(
                      child: Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: size.width * 0.03, top: 20),
                              child: Container(
                                height: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: size.width * 0.28,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 3),
                                            child: Text(
                                              widget.order.name,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Poppins'),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 3),
                                            child: Text(
                                              widget.order.harga.toString(),
                                              style: TextStyle(
                                                  fontFamily: 'Poppins'),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 0),
                                            child: Row(
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    //bapak
                                                  },
                                                  child: Container(
                                                    width: 25,
                                                    height: 25,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        width: 3,
                                                        color: const Color(
                                                            0xffEA8F06),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: Center(
                                                      child: GestureDetector(
                                                        child: Icon(
                                                          CupertinoIcons.minus,
                                                          color: Colors.black,
                                                          size: 12,
                                                        ),
                                                        onTap: () {
                                                          setState(() {
                                                            if (widget.jumlah >
                                                                0) {
                                                              widget.jumlah--;
                                                            }
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: size.width * 0.03),
                                                  child: Container(
                                                    width: size.width * 0.03,
                                                    child: Text(
                                                      '${widget.order.jumlah}'
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color: Colors.black),
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
                                                    padding: EdgeInsets.only(
                                                        left:
                                                            size.width * 0.03),
                                                    child: Container(
                                                      width: 25,
                                                      height: 25,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                          width: 3,
                                                          color: const Color(
                                                              0xffEA8F06),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                      ),
                                                      child: Center(
                                                        child: Icon(
                                                          CupertinoIcons.add,
                                                          color: Colors.black,
                                                          size: 12,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: size.width * 0.3, top: 10),
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            widget.order.image),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.3,
                              height: 28,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border:
                                      Border.all(width: 1, color: Colors.grey)),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.035),
                                    child: Container(
                                      child: Icon(
                                        Icons.calendar_today_rounded,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.02),
                                    child: Text(
                                      "Catatan",
                                      style: TextStyle(fontFamily: 'Poppins'),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: size.width * 0.9,
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * 0.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "DETAIL TRANSAKSI",
                            style: TextStyle(
                                color: Colors.grey, fontFamily: 'Poppins'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: size.width * 0.03),
                            child: Container(
                              child: TransaksiItem(),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: size.width * 0.03, top: 20),
                            child: Container(
                              child: ItemPajak(),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        width: size.width * 0.9,
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      child: ItemTotal(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: DefaultTabController(
                          length: 3,
                          child: TabBar(
                            controller: _tabController,
                            labelStyle: TextStyle(fontWeight: FontWeight.w700),
                            indicatorSize: TabBarIndicatorSize.label,
                            labelColor: Color(0xFFEA8F06),
                            indicator: MD2Indicator(
                              indicatorSize: MD2IndicatorSize.full,
                              indicatorHeight: 3,
                              indicatorColor: Color(0xFFEA8F06),
                            ),
                            tabs: [
                              Tab(
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/gopay.jpg",
                                    ),
                                  )),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Tunai",
                                  style: TextStyle(
                                      fontFamily: "poppins",
                                      fontSize: 17,
                                      color: Colors.black),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Lainnya",
                                  style: TextStyle(
                                      fontFamily: "poppins",
                                      fontSize: 17,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          )),
                    ),
                    Container(
                      height: 150.0,
                      child: new TabBarView(
                        controller: _tabController,
                        children: <Widget>[
                          Container(
                              padding:
                                  EdgeInsets.only(top: 20, left: 10, right: 10),
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => QRScreen(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      height: 41,
                                      width: size.width * 0.9,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFEA8F06),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 10,
                                                spreadRadius: 7,
                                                color: Colors.grey
                                                    .withOpacity(0.3))
                                          ]),
                                      child: Center(
                                        child: Text(
                                          "Tunjukkan kode QR",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 41,
                                    width: size.width * 0.9,
                                    margin: EdgeInsetsDirectional.only(top: 20),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFEA8F06),
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 10,
                                              spreadRadius: 7,
                                              color:
                                                  Colors.grey.withOpacity(0.3))
                                        ]),
                                    child: Center(
                                      child: Text(
                                        "Tagih Rp 135.000",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              )),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Container(
                              child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: size.width * 0.4,
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 20),
                                            child: Center(
                                              child: Text(
                                                "Rp 50.000",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: size.width * 0.4,
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 20),
                                            child: Center(
                                              child: Text(
                                                "Rp 100.000",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 30),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: size.width * 0.4,
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 25),
                                            child: Center(
                                              child: Text(
                                                "Uang pas",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    JumlahLain(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            width: size.width * 0.4,
                                            decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 20),
                                              child: Center(
                                                child: Text(
                                                  "Jumlah lain",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Text("Kosong")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
