import 'package:flutter/material.dart';

class ConfirmationButton extends StatefulWidget {
  const ConfirmationButton({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<ConfirmationButton> createState() => _ButtonState();
}

class _ButtonState extends State<ConfirmationButton> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          alignment: Alignment.center,
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
          child: Text(
            'konfirmasi',
            style: TextStyle(fontSize: 20, fontFamily: 'Poppins'),
          ),
        ),
      ),
    );
  }
}