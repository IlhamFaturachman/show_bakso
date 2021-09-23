import 'package:flutter/material.dart';

class PajakCard extends StatelessWidget {
  final String pajak, totalPajak;

  const PajakCard({Key key, this.pajak, this.totalPajak}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        children: [
          Container(
            width: size.width * 0.6,
            child: Text(
              "Pajak " + pajak,
              style: TextStyle(
                  fontFamily: 'Poppins', fontWeight: FontWeight.normal),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.05),
            child: Text(
              totalPajak,
              style: TextStyle(
                  fontFamily: 'Poppins', fontWeight: FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}
