// To parse this JSON data, do
//
//     final assetCategory = assetCategoryFromJson(jsonString);

import 'dart:convert';

AssetCategory assetCategoryFromJson(String str) =>
    AssetCategory.fromJson(json.decode(str));

String assetCategoryToJson(AssetCategory data) => json.encode(data.toJson());

class AssetCategory {
  AssetCategory({
    this.dataCount,
    this.data,
  });

  final int? dataCount;
  final List<Data>? data;

  factory AssetCategory.fromJson(Map<String, dynamic> json) => AssetCategory(
        dataCount: json["data_count"],
        data: List<Data>.from(json["data"].map((x) => Data.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data_count": dataCount,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };

  @override
  String toString() => data.toString();
}

class Data {
  Data({
    required this.id,
    required this.value,
  });

  final String id;
  final String value;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
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
