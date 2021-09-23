import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:show_bakso/dummy/itemorder.dart';
import 'package:show_bakso/dummy/itempajak.dart';
import 'package:show_bakso/dummy/itemtotal.dart';
import 'package:show_bakso/dummy/itemtransaksi.dart';
import 'package:show_bakso/template/tabbar.dart';

class DetailPesanan extends StatefulWidget {
  const DetailPesanan({Key key}) : super(key: key);

  @override
  _DetailPesananState createState() => _DetailPesananState();
}

class _DetailPesananState extends State<DetailPesanan> {
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
                      child: ItemOrder(),
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
                            // Padding(
                            //   padding: EdgeInsets.only(left: size.width * 0.25),
                            //   child: Container(
                            //     child: Row(
                            //       children: [
                            //         GestureDetector(
                            //           onTap: () {
                            //             //bapak
                            //           },
                            //           child: Padding(
                            //             padding: EdgeInsets.only(
                            //                 left: size.width * 0.05),
                            //             child: Container(
                            //               width: 28,
                            //               height: 28,
                            //               decoration: BoxDecoration(
                            //                 border: Border.all(
                            //                   width: 3,
                            //                   color: const Color(0xffEA8F06),
                            //                 ),
                            //                 borderRadius:
                            //                     BorderRadius.circular(20),
                            //               ),
                            //               child: Center(
                            //                 child: Icon(
                            //                   CupertinoIcons.minus,
                            //                   color: Colors.black,
                            //                   size: 21,
                            //                 ),
                            //               ),
                            //             ),
                            //           ),
                            //         ),
                            //         Padding(
                            //           padding: EdgeInsets.only(
                            //               left: size.width * 0.03),
                            //           child: Container(
                            //             width: size.width * 0.08,
                            //             child: Center(
                            //               child: Text(
                            //                 "2",
                            //                 style: TextStyle(
                            //                     fontSize: 20,
                            //                     color: Colors.black,
                            //                     fontFamily: 'Poppins'),
                            //               ),
                            //             ),
                            //           ),
                            //         ),
                            //         GestureDetector(
                            //           onTap: () {
                            //             //bapak
                            //           },
                            //           child: Padding(
                            //             padding: EdgeInsets.only(
                            //                 left: size.width * 0.03),
                            //             child: Container(
                            //               width: 28,
                            //               height: 28,
                            //               decoration: BoxDecoration(
                            //                 border: Border.all(
                            //                   width: 3,
                            //                   color: const Color(0xffEA8F06),
                            //                 ),
                            //                 borderRadius:
                            //                     BorderRadius.circular(20),
                            //               ),
                            //               child: Center(
                            //                 child: Icon(
                            //                   CupertinoIcons.add,
                            //                   color: Colors.black,
                            //                   size: 21,
                            //                 ),
                            //               ),
                            //             ),
                            //           ),
                            //         ),
                            //       ],
                            //     ),
                            //   ),
                            // ),
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
