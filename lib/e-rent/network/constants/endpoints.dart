class Endpoints {
  Endpoints._();

  // base url
  static const String baseUrl = "http://jsonplaceholder.typicode.com";

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 30000;

  // booking endpoints
  static const String getPosts = baseUrl + "/posts";

  //url for google firebase messaging to send message using firebase messaging service
  static const String fcmUrl = "https://fcm.googleapis.com/fcm/send";
  //unique serverKey provided from firbase dashboard
  static const String fcmServerKey =
      "AAAAwOOLcWw:APA91bFI5ao-DLme1cTyARGgFNnsXkotJ1KweHlHUfOmgmaRIydd-v82YSJTIEyjH3T1z8hD_bzqj6TGlHscN45KUePHFKueyeowdqfg-6Og3a5CIWxtWyxEnItn8H6t8UArUavoDX63";

  // e-rent api
  static const String apiUrl = "http://94.237.77.87/api";

  // asset_category endpoint
  static const String getAssetCategory = baseUrl + "/asset_category";
}
