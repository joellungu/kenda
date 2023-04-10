import 'dart:async';
import 'package:get/get.dart';
import 'package:kenda/pages/accueil/accueil.dart';
import 'package:kenda/pages/historique/historique.dart';
import 'package:kenda/pages/notifications/notifications.dart';
import 'package:kenda/pages/profil/infos_personnel.dart/infos_personnel.dart';
import 'package:kenda/pages/profil/profil.dart';
import 'package:kenda/pages/reservations/reservation.dart';
import 'package:kenda/widgets/carte_bus.dart';
import 'package:kenda/widgets/dessin.dart';
import 'package:kenda/widgets/ticket_widget.dart';

import '';
import 'package:flutter/material.dart';

import 'accueil/accueil_controller.dart';
import 'application.dart';
import 'application_controller.dart';
import 'historique/historique_controller.dart';
import 'login/auth.dart';
import 'login/login_controller.dart';
import 'notifications/notification_controller.dart';
import 'recherche/lieu_controller.dart';
import 'recherche/rechercher_controller.dart';
import 'recherche/resultat.dart';
import 'recherche/resultat_controller.dart';
import 'reservations/details/details.dart';
import 'reservations/formulaire/formulaire.dart';
import 'reservations/paiement/paiement.dart';
import 'reservations/paiement/paiement_controller.dart';

class Splash extends StatelessWidget {
  //
  ApplicationController applicationController =
      Get.put(ApplicationController());
  //
  AccueilController accueilController = Get.put(AccueilController());
  //
  LoginController loginController = Get.put(LoginController());
  //
  RechercheController rechercheController = Get.put(RechercheController());
  //
  NotificationController notificationController =
      Get.put(NotificationController());
  //
  LieuController lieuController = Get.put(LieuController());
  //
  ResultatController resultatController = Get.put(ResultatController());
  //
  PaiementController paiementController = Get.put(PaiementController());
  //
  HistoriqueController historiqueController = Get.put(HistoriqueController());
  //
  Splash() {
    Timer(const Duration(seconds: 3), () {
      Get.off(Application()); //
      //Get.off(Paiement()); //
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: ClipPath(
          clipper: TicketWid(),
          child: Container(
            height: 250,
            width: 200,
            color: Colors.indigo.shade900,
          ),
        ),
        //const Text("..."),
      ),
    );
  }
}
