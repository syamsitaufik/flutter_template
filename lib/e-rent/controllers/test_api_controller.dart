import 'package:flutter_template/e-rent/services/test_api_service.dart';
import 'package:get/get.dart';

class TestApiController extends GetxController {
  var isLoading = true.obs;
  var assetCategoryList = [].obs;

  @override
  void onInit() {
    getAssetCategory();
    super.onInit();
  }

  void getAssetCategory() async {
    try {
      isLoading(true);
      var assetCategory = await TestApiService.getAssetCategory();
      assetCategoryList.value = assetCategory.data!;
    } finally {
      isLoading(false);
    }
  }
}
