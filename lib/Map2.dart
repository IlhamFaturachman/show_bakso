import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:here_sdk/core.dart';
import 'package:here_sdk/mapview.dart';
import 'package:show_bakso/Map.dart';
import 'package:show_bakso/MenuBakso.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class Peta2 extends StatefulWidget {
  @override
  _Peta2State createState() => _Peta2State();
}

class _Peta2State extends State<Peta2> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            HereMap(
              onMapCreated: onMapCreated,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.18, top: size.height * 0.1),
              child: Container(
                width: size.width * 0.65,
                height: 66,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
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
                                    image:
                                        AssetImage("assets/images/mangkuk.jpg"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Container(
                              child: Text(
                                "18",
                                style: TextStyle(fontSize: 32.34),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "total transaksi",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Container(
                              child: Text(
                                "Rp 200.000",
                                style:
                                    TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MenuBakso(),
                      ),
                    );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 3,
                                color: const Color(0xffEA8F06),
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Icon(
                              CupertinoIcons.add,
                              color: const Color(0xffEA8F06),
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.05, top: size.height * 0.7),
              child: Container(
                width: 160,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Icon(
                        Icons.arrow_drop_up_rounded,
                        size: 55,
                        color: const Color(0xffEA8F06),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Text(
                        "bantuan",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.8, top: size.height * 0.7),
              child: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(
                    CupertinoIcons.location,
                    size: 35,
                    color: const Color(0xffEA8F06),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.05, top: size.height * 0.8),
              child: Container(
                width: size.width * 0.9,
                height: size.height * 0.12,
                child: ConfirmationSlider(
                  height: size.height * 0.12,
                  foregroundColor: Color(0xffEA5806),
                  foregroundShape: BorderRadius.circular(50),
                  backgroundColor: Colors.white,
                  backgroundShape: BorderRadius.circular(50),
                  text: "            Geser untuk Stop Berjualan",
                  textStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  onConfirmation: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Peta(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onMapCreated(HereMapController hereMapController) {
    hereMapController.mapScene.loadSceneForMapScheme(
      MapScheme.normalDay,
      (error) {
        if (error != null) {
          print("Error" + error.toString());
          return;
        }
      },
    );

    double distance = 2000;
    hereMapController.camera.lookAtPointWithDistance(
        GeoCoordinates(-7.9829137, 112.6259241), distance);
  }
}
