import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Container(
              child: TabBar(
                indicatorColor: Color(0xFFEA8F06),
                labelColor: Colors.black,
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
                      style: TextStyle(fontFamily: "poppins", fontSize: 18),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Lainnya",
                      style: TextStyle(fontFamily: "poppins", fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(             
              child: Padding(
                padding: EdgeInsets.only(
                  top: 80,
                ),
                child: TabBarView(
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Container(
                              height: 41,
                              width: size.width * 0.9,
                              decoration: BoxDecoration(
                                  color: Color(0xFFEA8F06),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 10,
                                        spreadRadius: 7,
                                        color: Colors.grey.withOpacity(0.3))
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
                                        color: Colors.grey.withOpacity(0.3))
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
                      padding: const EdgeInsets.symmetric(horizontal: 25),
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
                                      borderRadius: BorderRadius.circular(5),
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
                                      borderRadius: BorderRadius.circular(5),
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
                                      borderRadius: BorderRadius.circular(5),
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
                                  Container(
                                    width: size.width * 0.4,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 20),
                                      child: Center(
                                        child: Text(
                                          "Jumlah lain",
                                          style: TextStyle(
                                            fontSize: 18,
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
                    Container(
                      child: Text("Tab 3"),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
