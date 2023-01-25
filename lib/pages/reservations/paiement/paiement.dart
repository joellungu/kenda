import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kenda/pages/reservations/infos_supp/infos_supplementaire.dart';
import 'paiement_controller.dart';

class Paiement extends GetView<PaiementController> {
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
          body: ListView(
            children: [
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
                              child: Text("Payez avec tous les réseaux en RDC"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    // ListTile(
                    //   onTap: () {
                    //     //
                    //     showModalBottomSheet(
                    //       context: context,
                    //       isScrollControlled: true,
                    //       builder: (c) {
                    //         return Container(
                    //           height: Get.size.height / 1.05,
                    //           decoration: const BoxDecoration(
                    //             color: Colors.white,
                    //             borderRadius: BorderRadius.only(
                    //               topLeft: Radius.circular(0),
                    //               topRight: Radius.circular(0),
                    //             ),
                    //           ),
                    //           child: InfoSupplementaire(),
                    //         );
                    //       },
                    //     );
                    //   },
                    //   leading: const Icon(CupertinoIcons.gauge),
                    //   title: const Text("Informations supplémentaire"),
                    //   subtitle: const Text("Détails"),
                    //   trailing: const Icon(
                    //     Icons.arrow_forward_ios,
                    //     size: 15,
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            color: Colors.blue,
                            child: Image.asset(
                              "assets/M-Pesa.jpeg",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            color: Colors.blue,
                            child: Image.asset(
                              "assets/orange-money.jpeg",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            color: Colors.blue,
                            child: Image.asset(
                              "assets/airtel-money.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          prefix: Text(
                            "+243  ",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          suffixIcon: Icon(Icons.phone_android_outlined),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // ListTile(
                    //   onTap: () {
                    //     //
                    //   },
                    //   leading: const Icon(Icons.help),
                    //   title: const Text("Aide"),
                    //   subtitle: const Text(""),
                    //   trailing: const Icon(
                    //     Icons.arrow_forward_ios,
                    //     size: 15,
                    //   ),
                    // ),
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
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    color: Colors.green.shade800,
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        //
                      },
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
        ),
      ),
    );
  }
}
