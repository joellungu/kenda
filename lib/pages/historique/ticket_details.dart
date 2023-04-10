import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kenda/pages/recherche/infos.dart';
import 'package:kenda/pages/reservations/emplacement.dart';
import 'package:kenda/pages/reservations/formulaire/formulaire.dart';
import 'package:kenda/pages/reservations/infos_supp/infos_supplementaire.dart';
import 'package:kenda/pages/reservations/paiement/paiement.dart';
import 'package:kenda/pages/reservations/reservation.dart';
import 'package:kenda/widgets/carte_bus.dart';
import 'package:kenda/widgets/ma_carte.dart';
import 'package:kenda/widgets/modal.dart';

class TicketDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo.shade900,
      child: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: const Text(
              "Détails du billet",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.indigo.shade900,
            leading: IconButton(
              onPressed: () {
                //
                Get.back();
                //
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          body: ListView(
            children: [
              Container(
                height: Get.size.height / 5,
                color: Colors.indigo.shade100,
                child: Row(
                  children: [
                    Container(
                      width: 6,
                      color: Colors.indigoAccent.shade400,
                    ),
                    Expanded(
                      flex: 7,
                      child: Container(
                        padding: const EdgeInsets.all(7),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Trajet éffectué en bus"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Kinshasa, Mont-Ngafula, Matadi kibala",
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Kongo central, Boma, Matadi"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        alignment: Alignment.center,
                        child: Icon(
                          CupertinoIcons.qrcode_viewfinder,
                          size: 130,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  //
                  Get.to(MaCarte());
                  //
                },
                child: Container(
                  height: Get.size.height / 8,
                  //color: Colors.blue,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey.shade400,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          left: 22,
                          bottom: 5,
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Départ : dim. 4 déc",
                            style: TextStyle(
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "11:50",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.grey.shade900,
                                ),
                              ),
                              // color: Colors.green,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 0),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Icon(
                                Icons.arrow_forward,
                                size: 13,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.center,
                              //color: Colors.green,
                              child: Text(
                                "16:50",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.grey.shade900,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              padding: EdgeInsets.only(
                                right: 10,
                              ),
                              alignment: Alignment.topCenter,
                              //color: Colors.blue,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Voir la carte ",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.grey.shade900,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 13,
                                    color: Colors.grey.shade800,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          left: 22,
                          bottom: 5,
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Durée : 5h",
                            style: TextStyle(
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        //
                        showSimpleModal(InfoSupplementaire(), context);
                      },
                      leading: const Icon(CupertinoIcons.gauge),
                      title: const Text("Informations supplémentaire"),
                      subtitle: const Text("Détails"),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        showSimpleModal(Emplacement(), context);
                      },
                      leading: Icon(Icons.airline_seat_recline_extra_rounded),
                      title: Text("Emplacement dans le bus"),
                      subtitle: Text("2 places réservées"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                    const ListTile(
                      leading: Icon(Icons.map),
                      title: Text("Voir la carte"),
                      subtitle: Text("12 arrets"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 10),
                        child: Text("Arrets"),
                      ),
                    ),
                    Trajectoire(),
                    Trajectoire(),
                  ],
                ),
              )
            ],
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.grey.shade400,
                  width: 1,
                ),
              ),
            ),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    //color: Colors.grey,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 20),
                    child: RichText(
                      text: TextSpan(
                        text: "Prix pour 2 places\n",
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: "80.500 Fc",
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: InkWell(
                    onTap: () {
                      //
                      print("Click...");
                      showSimpleModal(TicketQrCode(), context);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      color: Colors.green.shade800,
                      alignment: Alignment.center,
                      child: const Text(
                        "Scaner",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TicketQrCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    //
                    Get.back();
                    //
                  },
                  icon: const Icon(
                    Icons.close,
                    size: 40,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                RichText(
                  text: TextSpan(
                    text: "Votre Qrcode",
                    children: [
                      TextSpan(
                        text: "",
                        style: TextStyle(
                          color: Colors.grey.shade900,
                          fontSize: 19,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                ),

                //                           Text(
                //   "Info trajet",
                //   style: TextStyle(
                //     color: Colors.black,
                //     fontWeight: FontWeight.bold,
                //     fontSize: 20,
                //   ),
                // ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.only(
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        //
                        //Get.back();
                        //
                      },
                      icon: const Icon(
                        CupertinoIcons.bus,
                        size: 40,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    RichText(
                      text: TextSpan(
                        text: "Transco Métro\n",
                        children: [
                          TextSpan(
                            text: "vers Boma",
                            style: TextStyle(
                              color: Colors.grey.shade900,
                              fontSize: 17,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey.shade900,
                        ),
                      ),
                    ),
                  ],
                ),
                Text("LOGO")
              ],
            ),
          ),
          Container(
            height: Get.size.height / 2,
            width: Get.size.width / 1.2,
            alignment: Alignment.center,
            child: const Icon(
              CupertinoIcons.qrcode_viewfinder,
              size: 250,
            ),
          )
        ],
      ),
    );
  }
}
