import 'package:flutter/material.dart';

class TransaksiCard extends StatelessWidget {
  final String name, jumlah, harga, pajak;

  const TransaksiCard({
    Key key,
    this.name,
    this.jumlah,
    this.harga,
    this.pajak,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: size.width * 0.45,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: size.width * 0.03),
                        child: Text(
                          name,
                          style: TextStyle(fontFamily: 'Poppins'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: size.width * 0.04, top: size.width * 0.03),
                        child: Text(
                          "x",
                          style: TextStyle(fontFamily: 'Poppins'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: size.width * 0.05, top: size.width * 0.03),
                        child: Text(
                          jumlah,
                          style: TextStyle(fontFamily: 'Poppins'),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.2, top: size.width * 0.03),
                  child: Container(
                    width: size.width * 0.2,
                    child: Text(
                      harga,
                      style: TextStyle(fontFamily: 'Poppins'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
