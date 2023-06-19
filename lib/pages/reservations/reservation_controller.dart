import 'package:get/get.dart';
import 'package:kenda/utils/requetes.dart';

class ReservationController extends GetxController {
  //
  Requete requete = Requete();
  //
  RxList places = [].obs;
  //

  Future<List> getHoraire(String idPartenaire, String date, int status) async {
    Response rep =
        await requete.getE("tickets/horaire/$idPartenaire/$date/$status");
    if (rep.isOk) {
      print("::: ${rep.body}");
      return rep.body;
    } else {
      print("::: ${rep.body}");
      return [];
    }
  }

  Future<List> enregistrer(Map e) async {
    Response rep = await requete.postE("tickets", e);
    if (rep.isOk) {
      print(rep.body);
      return rep.body;
    } else {
      print(rep.body);
      return [];
    }
  }
}
