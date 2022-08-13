import 'dart:async';

import 'dropdown2_model.dart';
import 'dropdown2_service.dart';
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
        .then((dynamic res) => AssetCategoryList.fromJson(res))
        .catchError((error) => throw NetworkException(message: error));
  }
}
