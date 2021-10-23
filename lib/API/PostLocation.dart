// To parse this JSON data, do
//
//     final postLocation = postLocationFromJson(jsonString);

import 'dart:convert';

PostLocation postLocationFromJson(String str) => PostLocation.fromJson(json.decode(str));

String postLocationToJson(PostLocation data) => json.encode(data.toJson());

class PostLocation {
    PostLocation({
        this.status,
        this.values,
    });

    int status;
    List<Value> values;

    factory PostLocation.fromJson(Map<String, dynamic> json) => PostLocation(
        status: json["status"],
        values: List<Value>.from(json["values"].map((x) => Value.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "values": List<dynamic>.from(values.map((x) => x.toJson())),
    };
}

class Value {
    Value({
        this.driver,
        this.latitude,
        this.longitude,
    });

    int driver;
    double latitude;
    double longitude;

    factory Value.fromJson(Map<String, dynamic> json) => Value(
        driver: json["driver"],
        latitude: json["latitude"].toDouble(),
        longitude: json["longitude"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "driver": driver,
        "latitude": latitude,
        "longitude": longitude,
    };
}
