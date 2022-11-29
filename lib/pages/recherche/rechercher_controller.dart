import 'dart:async';

import 'package:get/get.dart';

class RechercheController extends GetxController with StateMixin<List> {
  getAllBusTranson() async {
    Timer(Duration(seconds: 3), () {
      change([
        {"id": "1234567890"}
      ], status: RxStatus.success());
    });
  }
}
