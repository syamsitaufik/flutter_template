import 'package:flutter_template/dropdown-1/dropdown1_model.dart';
import 'package:http/http.dart' as http;

class HttpService {
  static Future<AssetCategoryList> getAssetCategoryList() async {
    var response =
        await http.get(Uri.parse("http://94.237.77.87/api/asset_category"));
    if (response.statusCode == 200) {
      var data = response.body;
      print(data);
      return assetCategoryListFromJson(data);
    } else {
      throw Exception();
    }
  }
}
