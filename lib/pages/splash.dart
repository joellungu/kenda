import 'dart:async';
import 'package:get/get.dart';
import 'package:kenda/pages/accueil/accueil.dart';
import 'package:kenda/pages/notifications/notifications.dart';
import 'package:kenda/pages/profil/infos_personnel.dart/infos_personnel.dart';
import 'package:kenda/pages/profil/paiement/mode_paiement.dart';
import 'package:kenda/pages/profil/profil.dart';
import 'package:kenda/pages/reservations/reservation.dart';
import 'package:kenda/widgets/carte_bus.dart';

import '';
import 'package:flutter/material.dart';

import 'accueil/accueil_controller.dart';
import 'application.dart';
import 'application_controller.dart';
import 'login/auth.dart';
import 'login/login_controller.dart';
import 'notifications/notification_controller.dart';
import 'recherche/rechercher_controller.dart';
import 'reservations/details/details.dart';
import 'reservations/formulaire/formulaire.dart';

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
  Splash() {
    Timer(const Duration(seconds: 3), () {
      Get.off(Accueil());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: const Text("..."),
    ));
  }
}
