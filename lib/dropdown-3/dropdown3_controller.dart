import 'dart:async';

import 'dropdown3_model.dart';
import 'dropdown3_service.dart';
import 'network_exceptions.dart';

class AppApi {
  // rest-client instance
  final RestClient _restClient;
  AppApi(this._restClient);

  // sample api call with default rest client
  // Future<PostsList> getPosts() {
  //   return _restClient
  // .get(Endpoints.getPosts)
  //       .then((dynamic res) => PostsList.fromJson(res))
  //       .catchError((error) => throw NetworkException(message: error));
  // }

  Future<AssetCategoryList> getAssetCategory() {
    return _restClient
        .get('/asset_category')
        .then((dynamic res) => assetCategoryListFromJson(res))
        .catchError((error) => throw NetworkException(message: error));
  }
}
