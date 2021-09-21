import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:show_bakso/screens/Map2.dart';
import 'package:show_bakso/widget/itemmenu.dart';

class MenuBakso extends StatefulWidget {
  @override
  _MenuBaksoState createState() => _MenuBaksoState();
}

class _MenuBaksoState extends State<MenuBakso> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
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
                          width: size.width * 0.36,
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
                              Container(),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(
                                    CupertinoIcons.arrow_left,
                                    color: const Color(0xffEA8F06),
                                    size: 40,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 7),
                                child: Container(
                                  child: Text(
                                    "Batal",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
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
                                    padding:
                                        const EdgeInsets.only(top: 17, left: 8),
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
                                    padding: const EdgeInsets.only(left: 13),
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
                                padding:
                                    const EdgeInsets.only(top: 10, left: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        "total transaksi",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
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
                MenuItem(),
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
                Padding(
                  padding: EdgeInsets.only(bottom: size.height * 0.05),
                  child: Container(
                    width: size.width * 0.9,
                    height: size.height * 0.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xffEA8F06),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "5 menu",
                                style: TextStyle(color: Colors.white, fontSize: 30),
                              ),
                               Text(
                                  "klik untuk melanjutkan",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                            
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: size.width * 0.13),
                          child: Container(
                            child: Text("Rp 135.000", style: TextStyle(color: Colors.white, fontSize: 24),),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
