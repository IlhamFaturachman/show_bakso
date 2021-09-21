import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:here_sdk/core.dart';
import 'package:here_sdk/mapview.dart';
import 'package:show_bakso/screens/Map2.dart';
import 'package:show_bakso/screens/home.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

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
                  foregroundColor: Color(0xff34C700),
                  foregroundShape: BorderRadius.circular(50),
                  backgroundColor: Colors.white,
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

    hereMapController.mapScene.addMapPolygon(_createMapCircle());
    hereMapController.mapScene.addMapPolygon(_buatMapCircle());
    hereMapController.mapScene.addMapPolygon(_createMapCircle2());
    hereMapController.mapScene.addMapPolygon(_buatMapCircle2());
    hereMapController.mapScene.addMapPolygon(_lastMapCircle());

    double distance = 2000;
    hereMapController.camera.lookAtPointWithDistance(
        GeoCoordinates(-7.9829137, 112.6259241), distance);
  }

  MapPolygon _createMapCircle() {
    double radiusInMeters = 500;
    GeoCircle geoCircle =
        GeoCircle(GeoCoordinates(-7.9829137, 112.6259241), radiusInMeters);

    GeoPolygon geoPolygon = GeoPolygon.withGeoCircle(geoCircle);
    Color fillColor = Color.fromARGB(160, 0, 144, 138);
    MapPolygon mapPolygon = MapPolygon(geoPolygon, fillColor);

    return mapPolygon;
  }

  MapPolygon _buatMapCircle() {
    double radiusInMeters = 500;
    GeoCircle geoCircle =
        GeoCircle(GeoCoordinates(-7.97651, 112.6362599), radiusInMeters);

    GeoPolygon geoPolygon = GeoPolygon.withGeoCircle(geoCircle);
    Color fillColor = const Color(0x80EA8F06);
    MapPolygon mapPolygon = MapPolygon(geoPolygon, fillColor);

    return mapPolygon;
  }

  MapPolygon _createMapCircle2() {
    double radiusInMeters = 500;
    GeoCircle geoCircle =
        GeoCircle(GeoCoordinates(-7.9870115, 112.6367586), radiusInMeters);

    GeoPolygon geoPolygon = GeoPolygon.withGeoCircle(geoCircle);
    Color fillColor = const Color(0x80FF5C4D);
    MapPolygon mapPolygon = MapPolygon(geoPolygon, fillColor);

    return mapPolygon;
  }

  MapPolygon _buatMapCircle2() {
    double radiusInMeters = 500;
    GeoCircle geoCircle =
        GeoCircle(GeoCoordinates(-7.9933047, 112.625967), radiusInMeters);

    GeoPolygon geoPolygon = GeoPolygon.withGeoCircle(geoCircle);
    Color fillColor = const Color(0x80DAD870);
    MapPolygon mapPolygon = MapPolygon(geoPolygon, fillColor);

    return mapPolygon;
  }

  MapPolygon _lastMapCircle() {
    double radiusInMeters = 500;
    GeoCircle geoCircle =
        GeoCircle(GeoCoordinates(-7.9986169,112.6362238), radiusInMeters);

    GeoPolygon geoPolygon = GeoPolygon.withGeoCircle(geoCircle);
    Color fillColor = const Color(0xB3FC2E20);
    MapPolygon mapPolygon = MapPolygon(geoPolygon, fillColor);

    return mapPolygon;
  }
}
