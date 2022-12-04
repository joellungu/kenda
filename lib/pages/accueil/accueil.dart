import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kenda/pages/apropos/apropos.dart';
import 'package:kenda/pages/historique/historique.dart';
import 'package:kenda/pages/notifications/notifications.dart';
import 'package:kenda/pages/profil/profil.dart';
import 'package:kenda/pages/recherche/recherche.dart';
import 'package:kenda/pages/reservations/reservation.dart';

import 'accueil_controller.dart';

class Accueil extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Accueil();
  }
}

class _Accueil extends State<Accueil> {
  //
  RxInt index = 0.obs;
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => index.value == 0
            ? Recherche()
            : index.value == 1
                ? Container()
                : Container(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (e) {
          setState(() {
            index.value = e;
          });
        },
        currentIndex: index.value,
        selectedItemColor: Colors.green.shade900,
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label: "Recherche"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.ticket), label: "Mes tickets"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled),
              label: "Se connecter"),
        ],
      ),
    );
  }
}

/**
 * Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      padding: const EdgeInsets.all(20),
                      children: List.generate(menus.length, (index) {
                        return Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              //
                              if (index == 0) {
                                Get.to(const Reservation());
                              } else if (index == 1) {
                                Get.to(Profil());
                              } else if (index == 2) {
                                Get.to(Notifications());
                              } else if (index == 3) {
                                Get.to(Historiques());
                              } else {
                                Get.to(Propos());
                              }
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 7,
                                  child: SizedBox(
                                    child: Image.asset(
                                      "assets/${menus[index]['icon']}",
                                    ),
                                    // child: Icon(
                                    //   menus[index]['icon'],
                                    //   color: Colors.blue,
                                    //   size: 100,
                                    // ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: SizedBox(
                                    child: Text(
                                      //nunito
                                      //cutiveMono
                                      "${menus[index]['titre']}",
                                      style: GoogleFonts.nunito(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.green.shade700,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "K'enda",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
 */
