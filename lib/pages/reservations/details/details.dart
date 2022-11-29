import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kenda/pages/reservations/formulaire/formulaire.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue, // Status bar color
      child: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Détails"),
            leading: IconButton(
              onPressed: () {
                //
                Get.back();
                //
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.blue.shade700,
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: PopupMenuButton(
                  itemBuilder: (c) {
                    return [
                      PopupMenuItem(
                        child: Text("Carte"),
                      )
                    ];
                  },
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: ListView(
                  padding: EdgeInsets.all(10),
                  children: [
                    SizedBox(
                      height: Get.size.height / 4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 7,
                            child: Image.asset("assets/bus5.png"),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.center,
                              // child: Column(
                              //   mainAxisAlignment:
                              //       MainAxisAlignment.spaceAround,
                              //   children: [
                              //     // Text(
                              //     //   "Transco",
                              //     //   textAlign: TextAlign.center,
                              //     //   //nunito
                              //     //   //cutiveMono
                              //     //   style: GoogleFonts.nunito(
                              //     //     fontWeight: FontWeight.bold,
                              //     //     color: Colors.black,
                              //     //     fontSize: 20,
                              //     //   ),
                              //     // ),
                              //     Row(
                              //       mainAxisAlignment:
                              //           MainAxisAlignment.spaceBetween,
                              //       children: [
                              //         Icon(
                              //           Icons.monetization_on_outlined,
                              //           color: Colors.blue,
                              //         ),
                              //         Text(
                              //           "37000 FC",
                              //           textAlign: TextAlign.center,
                              //           //nunito
                              //           //cutiveMono
                              //           style: GoogleFonts.nunito(
                              //             fontWeight: FontWeight.w900,
                              //             color: Colors.black,
                              //             fontSize: 13,
                              //           ),
                              //         ),
                              //       ],
                              //     ),
                              //     Row(
                              //       mainAxisAlignment:
                              //           MainAxisAlignment.spaceBetween,
                              //       children: [
                              //         Icon(
                              //           Icons.location_on,
                              //           color: Colors.blue,
                              //         ),
                              //         Text(
                              //           "Kinshasa",
                              //           textAlign: TextAlign.center,
                              //           //nunito
                              //           //cutiveMono
                              //           style: GoogleFonts.nunito(
                              //             fontWeight: FontWeight.bold,
                              //             color: Colors.black,
                              //             fontSize: 13,
                              //           ),
                              //         ),
                              //       ],
                              //     ),
                              //     Row(
                              //       mainAxisAlignment:
                              //           MainAxisAlignment.spaceBetween,
                              //       children: [
                              //         Icon(
                              //           Icons.location_on,
                              //           color: Colors.green,
                              //         ),
                              //         Text(
                              //           "Matadi",
                              //           textAlign: TextAlign.center,
                              //           //nunito
                              //           //cutiveMono
                              //           style: GoogleFonts.nunito(
                              //             fontWeight: FontWeight.bold,
                              //             color: Colors.black,
                              //             fontSize: 13,
                              //           ),
                              //         ),
                              //       ],
                              //     ),
                              //     Row(
                              //       mainAxisAlignment:
                              //           MainAxisAlignment.spaceBetween,
                              //       children: [
                              //         Icon(Icons.timelapse),
                              //         Text(
                              //           "Départ à 12h30",
                              //           textAlign: TextAlign.center,
                              //           //nunito
                              //           //cutiveMono
                              //           style: GoogleFonts.nunito(
                              //             fontWeight: FontWeight.bold,
                              //             color: Colors.black,
                              //             fontSize: 13,
                              //           ),
                              //         ),
                              //       ],
                              //     ),
                              //     Row(
                              //       mainAxisAlignment:
                              //           MainAxisAlignment.spaceBetween,
                              //       children: [
                              //         Icon(Icons.timelapse),
                              //         Text(
                              //           "Date à 12h30",
                              //           textAlign: TextAlign.center,
                              //           //nunito
                              //           //cutiveMono
                              //           style: GoogleFonts.nunito(
                              //             fontWeight: FontWeight.bold,
                              //             color: Colors.black,
                              //             fontSize: 13,
                              //           ),
                              //         ),
                              //       ],
                              //     ),
                              //     Row(
                              //       mainAxisAlignment:
                              //           MainAxisAlignment.spaceBetween,
                              //       children: [
                              //         Icon(Icons.timelapse),
                              //         Text(
                              //           "1500 Km",
                              //           textAlign: TextAlign.center,
                              //           //nunito
                              //           //cutiveMono
                              //           style: GoogleFonts.nunito(
                              //             fontWeight: FontWeight.w900,
                              //             color: Colors.black,
                              //             fontSize: 13,
                              //           ),
                              //         ),
                              //       ],
                              //     )
                              //   ],
                              // ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Transco",
                      //nunito
                      //cutiveMono
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 25,
                      ),
                    ),
                    Card(
                      elevation: 0,
                      //color: Colors.grey.shade200,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(
                            color: Colors.blue,
                          )),
                      color: Colors.white,
                      child: SizedBox(
                        height: Get.size.height / 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 7,
                              child: Container(
                                padding: const EdgeInsets.all(15),
                                // decoration: BoxDecoration(
                                //   //color: Colors.white,
                                //   border: Border.all(
                                //       //color: Colors.blue,
                                //       ),
                                //   borderRadius: const BorderRadius.only(
                                //     topLeft: Radius.circular(15),
                                //     bottomLeft: Radius.circular(15),
                                //   ),
                                // ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Date",
                                          //nunito
                                          //cutiveMono
                                          style: GoogleFonts.cutiveMono(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Heure",
                                          //nunito
                                          //cutiveMono
                                          style: GoogleFonts.cutiveMono(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Place disponible",
                                          //nunito
                                          //cutiveMono
                                          style: GoogleFonts.cutiveMono(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Place total",
                                          //nunito
                                          //cutiveMono
                                          style: GoogleFonts.cutiveMono(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Départ",
                                          //nunito
                                          //cutiveMono
                                          style: GoogleFonts.cutiveMono(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Destination",
                                          //nunito
                                          //cutiveMono
                                          style: GoogleFonts.cutiveMono(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Distance",
                                          //nunito
                                          //cutiveMono
                                          style: GoogleFonts.cutiveMono(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Duré du voyage",
                                          //nunito
                                          //cutiveMono
                                          style: GoogleFonts.cutiveMono(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Type",
                                          //nunito
                                          //cutiveMono
                                          style: GoogleFonts.cutiveMono(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Prix",
                                          //nunito
                                          //cutiveMono
                                          style: GoogleFonts.nunito(
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Container(
                                padding: const EdgeInsets.all(15),
                                // decoration: BoxDecoration(
                                //   border: Border.all(
                                //       //color: Colors.blue,
                                //       ),
                                //   borderRadius: const BorderRadius.only(
                                //     topRight: Radius.circular(15),
                                //     bottomRight: Radius.circular(15),
                                //   ),
                                // ),
                                child: SizedBox(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "12/12/2022",
                                            //nunito
                                            //cutiveMono
                                            style: GoogleFonts.cutiveMono(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "12h30",
                                            //nunito
                                            //cutiveMono
                                            style: GoogleFonts.cutiveMono(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "10",
                                            //nunito
                                            //cutiveMono
                                            style: GoogleFonts.cutiveMono(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "100",
                                            //nunito
                                            //cutiveMono
                                            style: GoogleFonts.cutiveMono(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "Kinshasa",
                                            //nunito
                                            //cutiveMono
                                            style: GoogleFonts.cutiveMono(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "Matadi",
                                            //nunito
                                            //cutiveMono
                                            style: GoogleFonts.cutiveMono(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "1500 Km",
                                            //nunito
                                            //cutiveMono
                                            style: GoogleFonts.cutiveMono(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "3h30'",
                                            //nunito
                                            //cutiveMono
                                            style: GoogleFonts.cutiveMono(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "Mini Bus",
                                            //nunito
                                            //cutiveMono
                                            style: GoogleFonts.cutiveMono(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "37000 Fc",
                                            //nunito
                                            //cutiveMono
                                            style: GoogleFonts.nunito(
                                              fontWeight: FontWeight.w900,
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        //
                        Get.to(Formulaire());
                        //
                      },
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(1),
                        backgroundColor: MaterialStateProperty.all(
                          Colors.blue,
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      //elevation: 1,
                      child: SizedBox(
                        height: 50,
                        width: Get.size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Reserver",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
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
          ),
        ),
      ),
    );
  }
}
