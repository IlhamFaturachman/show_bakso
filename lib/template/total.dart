import 'package:flutter/material.dart';

class TotalCard extends StatelessWidget {
  final String total;

  const TotalCard({Key key, this.total}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.03),
            child: Container(
              width: size.width * 0.6,
              child: Text(
                "Total",
                style: TextStyle(fontFamily: 'Poppins'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.05),
            child: Container(
              child: Text(
                total,
                style: TextStyle(fontFamily: 'Poppins'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
