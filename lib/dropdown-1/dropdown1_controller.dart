import 'package:flutter_template/dropdown-1/dropdown1_service.dart';
import 'package:get/get.dart';

class Dropdown1Controller extends GetxController {
  var isLoading = true.obs;
  var assetCategoryList = [].obs;

  @override
  void onInit() {
    getAssetCategoryList();
    super.onInit();
  }

  void getAssetCategoryList() async {
    try {
      isLoading(true);
      var assetCategoryListapi = await HttpService.getAssetCategoryList();
      assetCategoryList.value = assetCategoryListapi.data;
      print(assetCategoryList.value.toString());
    } finally {
      isLoading(false);
    }
  }
}
