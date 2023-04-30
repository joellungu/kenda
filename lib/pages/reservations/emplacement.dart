import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kenda/pages/reservations/paiement/paiement.dart';
import 'package:kenda/widgets/buss.dart';

import 'reservation_controller.dart';

class Emplacement extends StatelessWidget {
  List? l;
  Emplacement({this.l});

  ReservationController reservationController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
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
              SizedBox(
                width: 15,
              ),
              RichText(
                text: TextSpan(
                  text: "Emplacement dans le bus\n",
                  children: [
                    TextSpan(
                      text: "2 Places selectionnables",
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
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Buss(l!),
          ),
        ),
        const SizedBox(
          height: 0,
        ),
        Padding(
          padding: EdgeInsets.zero,
          child: InkWell(
            onTap: () {
              if (reservationController.places.isEmpty) {
                Get.snackbar("Attention",
                    "Veuillez selectionner une ou plusieurs places.",
                    colorText: Colors.white, backgroundColor: Colors.indigo);
              } else {
                Get.to(Paiement());
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 2,
              ),
              child: Container(
                alignment: Alignment.center,
                height: 50,
                padding: const EdgeInsets.only(
                  //left: 20,
                  //right: 20,
                  bottom: 2,
                ),
                child: Text(
                  "Continuer".tr,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.indigo.shade900,
                  borderRadius: BorderRadius.circular(10),
                  // gradient: LinearGradient(
                  //   begin: Alignment.centerLeft,
                  //   end: Alignment.centerRight,
                  //   colors: <Color>[Colors.yellow.shade700, Colors.black],
                  // ),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
