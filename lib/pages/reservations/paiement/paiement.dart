import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kenda/pages/reservations/infos_supp/infos_supplementaire.dart';
import 'package:kenda/pages/reservations/reservation_controller.dart';
import 'package:kenda/widgets/achat.dart';
import 'paiement_controller.dart';

class Paiement extends GetView<PaiementController> {
  //
  Map e;
  Paiement(this.e) {
    print(e);
  }
  //
  RxString choix = "CDF".obs;
  RxString CDF = "CDF".obs;
  RxString USD = "USD".obs;
  //
  ReservationController reservationController = Get.find();
  //
  PaiementController paiementController = Get.find();
  //
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
            centerTitle: true,
            title: const Text(
              "Achata du billet",
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
          //backgroundColor: Colors.indigo.shade900,
          body: Column(
            children: [
              Expanded(
                flex: 1,
                child: Column(children: [
                  Container(
                    height: Get.size.height / 13,
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
                                  child: Text(
                                    "Payez avec tous les réseaux en RDC et en toute sécurité.",
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: TextField(
                            autofocus: true,
                            keyboardType: TextInputType.number,
                            style: const TextStyle(
                              fontSize: 25,
                              color: Colors.white70,
                            ),
                            decoration: InputDecoration(
                              fillColor: Colors.indigo.shade900,
                              filled: true,
                              prefix: const Text(
                                "+243  ",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                              suffixIcon: const Icon(
                                Icons.phone_android_outlined,
                                color: Colors.white70,
                              ),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                flex: 5,
                                child: Obx(
                                  () => RadioListTile(
                                    activeColor: Colors.indigo,
                                    title: Text(
                                      CDF.value,
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    value: "CDF",
                                    groupValue: choix.value,
                                    onChanged: (e) {
                                      choix.value = e as String;
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Obx(
                                  () => RadioListTile(
                                    activeColor: Colors.indigo,
                                    title: Text(
                                      USD.value,
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    value: "USD",
                                    groupValue: choix.value,
                                    onChanged: (e) {
                                      choix.value = e as String;
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        getDetails("${e['idPartenaire']}"),
                      ],
                    ),
                  ),
                ]),
              ),
              //////////
              Container(
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
                            text: "Prix total\n",
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: "82.500 Fc",
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
                          //
                          print("Salut comment ?");
                          /**
                             * 
                                 Long idPartenaire;
                                 Long idTronson;
                                //
                                 int nombrepDePlace;
                                //Arret Arriver//
                                 String itinerance;
                                 String datePaiement;

                                 String emplacement;
                                 Boolean consomer;
                                 double prix;
                                 String devise;
                                //
                                 String codePostal;
                                 String phone;
                                 int codeRecuperation;
                                 String dateDepart;
                                 String heureDepart;
                             */
                          String parametres =
                              "12-12-2023,15:00,+243,815381693,80500,CDF,kinshasa,kilongo,2,12-13,12345,false";
                          //
                          showDialog(
                            context: context,
                            builder: (c) {
                              return Material(
                                color: Colors.white,
                                child: Achat(parametres),
                              );
                            },
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          color: Colors.green.shade800,
                          alignment: Alignment.center,
                          child: const Text(
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
            ],
          ),
        ),
      ),
    );
  }

  Widget getDetails(String idPartenaire) {
    return FutureBuilder(
        future: paiementController.getCompanie(idPartenaire),
        builder: (c, t) {
          if (t.hasData) {
            Map d = t.data as Map;
            return Text.rich(
              TextSpan(
                text:
                    'Paiemant de ${reservationController.places.length} billets de la compagnie ',
                style: TextStyle(
                  fontSize: 20,
                ),
                children: [
                  TextSpan(
                    text: "${d['nom']}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            );
          } else if (t.hasError) {
            return Container();
          }
          return Container();
        });
  }
}
