import 'package:get/get_connect.dart';

class Connexion extends GetConnect {
  Future<Response> getE(String path) async {
    return get(
      path,
    );
  }

  //
  Future<Response> postE(String path, Map data) async {
    return post(
      path,
      data,
    );
  }

  //
  Future<Response> putE(String path, Map data) async {
    return put(
      path,
      data,
    );
  }

  //
  Future<Response> deleteE(String path) async {
    return delete(
      path,
    );
  }
  //

}
