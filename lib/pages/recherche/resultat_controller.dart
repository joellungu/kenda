import 'dart:convert';

import 'package:get/get.dart';
import 'package:kenda/utils/connexion.dart';

class ResultatController extends GetxController with StateMixin<List> {
  //
  getAllBusDisponible(Map demande) async {
    //
    Connexion con = Connexion();
    Response rep = await con.postE("route", demande);
    if (rep.isOk) {
      //
    } else {
      //
    }
  }
}
