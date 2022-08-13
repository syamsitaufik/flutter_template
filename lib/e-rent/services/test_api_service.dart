import 'package:flutter_template/e-rent/models/asset_category.dart';
import 'package:http/http.dart' as http;

class TestApiService {
  static Future<AssetCategory> getAssetCategory() async {
    var response =
        await http.get(Uri.parse("http://94.237.77.87/api/asset_category"));
    if (response.statusCode == 200) {
      var data = response.body;
      return assetCategoryFromJson(data);
    } else {
      throw Exception();
    }
  }
}
