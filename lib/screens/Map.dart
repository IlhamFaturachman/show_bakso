import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:here_sdk/core.dart';
import 'package:here_sdk/mapview.dart';
import 'package:show_bakso/screens/Map2.dart';
import 'package:show_bakso/screens/home.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';
import 'package:geolocator/geolocator.dart';


class Peta extends StatefulWidget {
  @override
  _PetaState createState() => _PetaState();
}

class _PetaState extends State<Peta> {
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
                  left: size.width * 0.05, top: size.height * 0.1),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },
                child: Container(
                  width: 66,
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
                  child: Center(
                    child: Icon(
                      CupertinoIcons.arrow_left,
                      size: 45,
                      color: const Color(0xffEA8F06),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.05, top: size.height * 0.7),
              child: Container(
                width: size.width * 0.45,
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
                child: GestureDetector(
                  onTap: () {
                    _showDialog(context);
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.02),
                        child: Icon(
                          Icons.arrow_drop_up_rounded,
                          size: size.width * 0.13,
                          color: const Color(0xffEA8F06),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.03),
                        child: Text(
                          "bantuan",
                          style: TextStyle(
                              fontSize: size.width * 0.05,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.8, top: size.height * 0.7),
              child: Container(
                width: 55,
                height: 55,
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
                    size: 40,
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
                height: 77.54,
                child: ConfirmationSlider(
                  height: 77.54,
                  foregroundColor: Color(0xff34C700),
                  foregroundShape: BorderRadius.circular(50),
                  backgroundColor: Colors.white,
                  backgroundShape: BorderRadius.circular(50),
                  text: "              Geser untuk Berjualan",
                  textStyle: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
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
            ),
          ],
        ),
      ),
    );
  }

// _getCurrentLocation() {
//     Geolocator
//       .getCurrentPosition(desiredAccuracy: LocationAccuracy.best, forceAndroidLocationManager: true)
//       .then((Position position) {
//           return _currentposition = position;
//       }).catchError((e) {
//         print(e);
//       });
//   }
  Widget _createWidget() {
    return Container(
      width: 40,
      height: 40,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/pinBakso.png"),
        ),
      ),
    );
  }

  void onMapCreated(HereMapController hereMapController) async {
    hereMapController.mapScene.loadSceneForMapScheme(
      MapScheme.normalDay,
      (error) {
        if (error != null) {
          print("Error" + error.toString());
          return;
        }
      },
    );

    hereMapController.mapScene.addMapPolygon(_createMapCircle());
    hereMapController.mapScene.addMapPolygon(_buatMapCircle());
    hereMapController.mapScene.addMapPolygon(_createMapCircle2());
    hereMapController.mapScene.addMapPolygon(_buatMapCircle2());
    hereMapController.mapScene.addMapPolygon(_lastMapCircle());

    double distance = 2000;
    Position position = await Geolocator.getCurrentPosition();
    hereMapController.camera.lookAtPointWithDistance(
        GeoCoordinates(position.latitude, position.longitude), distance);
    hereMapController.pinWidget(
        _createWidget(), GeoCoordinates(position.latitude, position.longitude));
  }

  MapPolygon _createMapCircle() {
    double radiusInMeters = 500;
    GeoCircle geoCircle =
        GeoCircle(GeoCoordinates(-7.9829137, 112.6259241), radiusInMeters);

    GeoPolygon geoPolygon = GeoPolygon.withGeoCircle(geoCircle);
    Color fillColor = Color(0x3341ea06);
    MapPolygon mapPolygon = MapPolygon(geoPolygon, fillColor);

    return mapPolygon;
  }

  MapPolygon _buatMapCircle() {
    double radiusInMeters = 500;
    GeoCircle geoCircle =
        GeoCircle(GeoCoordinates(-7.97651, 112.6362599), radiusInMeters);

    GeoPolygon geoPolygon = GeoPolygon.withGeoCircle(geoCircle);
    Color fillColor = const Color(0x33ea8f06);
    MapPolygon mapPolygon = MapPolygon(geoPolygon, fillColor);

    return mapPolygon;
  }

  MapPolygon _createMapCircle2() {
    double radiusInMeters = 500;
    GeoCircle geoCircle =
        GeoCircle(GeoCoordinates(-7.9870115, 112.6367586), radiusInMeters);

    GeoPolygon geoPolygon = GeoPolygon.withGeoCircle(geoCircle);
    Color fillColor = const Color(0x33ea0606);
    MapPolygon mapPolygon = MapPolygon(geoPolygon, fillColor);

    return mapPolygon;
  }

  MapPolygon _buatMapCircle2() {
    double radiusInMeters = 500;
    GeoCircle geoCircle =
        GeoCircle(GeoCoordinates(-7.9933047, 112.625967), radiusInMeters);

    GeoPolygon geoPolygon = GeoPolygon.withGeoCircle(geoCircle);
    Color fillColor = const Color(0x33ea8f06);
    MapPolygon mapPolygon = MapPolygon(geoPolygon, fillColor);

    return mapPolygon;
  }

  MapPolygon _lastMapCircle() {
    double radiusInMeters = 500;
    GeoCircle geoCircle =
        GeoCircle(GeoCoordinates(-7.9986169, 112.6362238), radiusInMeters);

    GeoPolygon geoPolygon = GeoPolygon.withGeoCircle(geoCircle);
    Color fillColor = const Color(0x3341ea06);
    MapPolygon mapPolygon = MapPolygon(geoPolygon, fillColor);

    return mapPolygon;
  }
}

void _showDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        var size = MediaQuery.of(context).size;
        return Dialog(
          insetPadding: EdgeInsets.only(
              right: size.width * 0.12, bottom: size.height * 0.05),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            width: 196,
            height: 255,
            child: Column(
              children: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 196),
                    child: Container(
                      width: 24,
                      height: 24,
                      child: Icon(
                        Icons.cancel_outlined,
                        size: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, bottom: 10),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffEA0606),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            child: Text(
                              "Ramai",
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, bottom: 10),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffFFE600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            child: Text(
                              "Moderat",
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, bottom: 10),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xff02C716),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            child: Text(
                              "Tidak Terlalu Ramai",
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      });
}
