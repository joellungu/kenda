import 'dart:async';

import 'package:get/get.dart';
import 'package:kenda/utils/requetes.dart';

class PaiementController extends GetxController with StateMixin<List> {
  RxList historique = RxList();
  //
  Requete requete = Requete();

  getAllBusTranson() async {
    Timer(Duration(seconds: 3), () {
      change([
        {"id": "1234567890"}
      ], status: RxStatus.success());
    });
  }

  Future<Map> getCompanie(String id) async {
    Response rep = await requete.getE("partenaires/$id");
    if (rep.isOk) {
      return rep.body;
    } else {
      return {};
    }
  }
}
