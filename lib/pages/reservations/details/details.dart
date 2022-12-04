import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kenda/pages/recherche/infos.dart';
import 'package:kenda/pages/reservations/formulaire/formulaire.dart';

class Details extends StatelessWidget {
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
              "Choix du billet",
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
                      flex: 1,
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
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  //
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (c) {
                      return Container(
                        height: Get.size.height / 1.05,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(0),
                          ),
                        ),
                        child: Infos({}),
                      );
                    },
                  );
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
                                    "Info trajet ",
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
                      },
                      leading: const Icon(Icons.details),
                      title: const Text("Informations supplémentaire"),
                      subtitle: const Text("Détails"),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        //
                      },
                      leading: const Icon(Icons.chair),
                      title: const Text("Emplacement dans le bus"),
                      subtitle: const Text("12 Places disponibles"),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          bottomNavigationBar: Container(
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
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    color: Colors.green.shade800,
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        //
                      },
                      child: Text(
                        "Acheter",
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
