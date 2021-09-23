import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final String image, name, harga, jumlah;

  const MenuCard({
    Key key,
    this.image,
    this.name,
    this.harga,
    this.jumlah,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Padding(
        padding:
            EdgeInsets.only(top: size.height * 0.03),
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
                                    image: AssetImage(
                                        image),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    name,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold , fontFamily: 'Poppins', color: Colors.black , decoration: TextDecoration.none),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    child: Text(
                                      harga,
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.grey , fontFamily: 'Poppins' , decoration: TextDecoration.none),
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
                            child: Icon(
                              CupertinoIcons.minus,
                              color: Colors.black,
                              size: 30,
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
                          jumlah,
                          style: TextStyle(fontSize: 20 , color: Colors.black),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        //bapak
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
