import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:show_bakso/screens/Map.dart';
import 'package:show_bakso/screens/Map2.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              size.width * 0.001, size.height * 0.1, size.width * 0.01, 0),
          child: Column(
            children: [
              Container(
                width: size.width * 0.9,
                height: size.height * 0.1,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        width: 68.22,
                        height: 68.22,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/bakso.jpg"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "SH",
                                style: GoogleFonts.roboto(
                                    fontSize: 26,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              TextSpan(
                                text: "O",
                                style: TextStyle(
                                    fontSize: 26,
                                    color: const Color(0xffEA8F06),
                                    fontWeight: FontWeight.w600),
                              ),
                              TextSpan(
                                text: "W BAKSO!",
                                style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.08),
                      child: Container(
                        width: 40.72,
                        height: 33.32,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/scan.png"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width * 0.9,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, size.height * 0.035, 0, 0),
                child: Container(
                  width: size.width * 0.9,
                  height: size.height * 0.1,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25),
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
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Ade!",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: const Color(0xffEA8F06),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Penjualan mu sedikit lagi memenuhi target, semangat!",
                                style: TextStyle(fontSize: 10),
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
                width: size.width * 0.9,
                height: size.height * 0.1,
                child: Row(
                  children: [
                    Container(
                      width: size.width * 0.45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 15,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Container(
                              width: 48.96,
                              height: 48.96,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/Icon1.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    "total transaksi",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    child: Text(
                                      "Rp 200.000",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Container(
                        width: size.width * 0.36,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 15,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Container(),
                            Container(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 10),
                                    child: Container(
                                      child: Text(
                                        "mangkuk \nterjual",
                                        style: TextStyle(fontSize: 13.47),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 17,
                                          ),
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
                                          padding:
                                              const EdgeInsets.only(left: 5),
                                          child: Container(
                                            child: Text(
                                              "18",
                                              style: TextStyle(fontSize: 32.34),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    // child: Text(
                                    //   "18",
                                    //   style: TextStyle(fontSize: 32.34),
                                    // ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  width: size.width * 0.9,
                  height: size.height * 0.37,
                  child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Peta(),
                      ),
                    );
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: 381,
                        height: 231,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/Map.jpg")),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 100),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7)),
                            width: size.width * 0.6,
                            height: size.height * 0.04,
                            child: Center(
                                child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 10),
                                  child: Container(
                                    width: 17,
                                    height: 17,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/telegram.jpg"),
                                          fit: BoxFit.contain),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "lihat rekomendasi ",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        TextSpan(
                                          text: "rute",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: const Color(0xffEA8F06),
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ),
              Container(
                width: size.width * 0.9,
                height: size.height * 0.12,
                child: ConfirmationSlider(
                  height: size.height * 0.12,
                  foregroundColor: Color(0xffEA8F06),
                  foregroundShape: BorderRadius.circular(50),
                  backgroundColor: Color(0xFFfef6ea),
                  backgroundShape: BorderRadius.circular(50),
                  text: "               Geser untuk Berjualan",
                  textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  onConfirmation: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Peta2(),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    size.width * 0.05, size.height * 0.05, 0, 0),
                child: Container(
                  width: size.width * 1,
                  height: size.height * 0.3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Menu utama",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.03),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(right: size.height * 0.025),
                              child: Container(
                                width: size.width * 0.27,
                                height: size.height * 0.13,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 13),
                                        child: Container(
                                          width: 31,
                                          height: 31,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/telpon.png"),
                                                fit: BoxFit.none),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          child: Text(
                                            "call center",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(right: size.height * 0.025),
                              child: Container(
                                width: size.width * 0.27,
                                height: size.height * 0.13,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 13),
                                        child: Container(
                                          width: 31,
                                          height: 31,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/chat.png"),
                                                fit: BoxFit.none),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          child: Text(
                                            "chat robot",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: size.width * 0.27,
                              height: size.height * 0.13,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 13),
                                      child: Container(
                                        width: 31,
                                        height: 31,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/notif.png"),
                                              fit: BoxFit.none),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Container(
                                        child: Text(
                                          "pengumuman",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ],
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
            ],
          ),
        ),
      ),
    );
  }
}
