// To parse this JSON data, do
//
//     final assetCategoryList = assetCategoryListFromJson(jsonString);

import 'dart:convert';

AssetCategoryList assetCategoryListFromJson(String str) =>
    AssetCategoryList.fromJson(json.decode(str));

String assetCategoryListToJson(AssetCategoryList data) =>
    json.encode(data.toJson());

class AssetCategoryList {
  AssetCategoryList({
    required this.data,
  });

  final List<Datum> data;

  factory AssetCategoryList.fromJson(Map<String, dynamic> json) =>
      AssetCategoryList(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
  @override
  String toString() => data.toString();
}

class Datum {
  Datum({
    required this.id,
    required this.value,
  });

  final String id;
  final String value;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "value": value,
      };

  @override
  String toString() => value;
}
