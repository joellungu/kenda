import 'package:get/get_connect.dart';

class Connexion extends GetConnect {
  static String url = "10.0.2.2:8080";
  //static String url = "0.0.0.0:8080";

  Future<Response> getE(String path) async {
    return get(
      "$url/$path",
    );
  }

  //
  Future<Response> postE(String path, Map data) async {
    return post(
      "$url/$path",
      data,
    );
  }

  //
  Future<Response> putE(String path, Map data) async {
    return put(
      "$url/$path",
      data,
    );
  }

  //
  Future<Response> deleteE(String path) async {
    return delete(
      "$url/$path",
    );
  }
  //

}
