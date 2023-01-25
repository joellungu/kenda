import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kenda/pages/historique/historique_controller.dart';
import 'package:kenda/pages/recherche/infos.dart';
import 'package:kenda/pages/reservations/details/details.dart';
import 'package:kenda/utils/utils.dart';
import 'package:kenda/widgets/dessin.dart';
import 'package:kenda/widgets/modal.dart';

import 'ticket_details.dart';

// class Resultat extends GetView<ResultatController> {
//   @override
//   State<StatefulWidget> createState() {
//     return _Resultat();
//   }
// }

class Historique extends GetView<HistoriqueController> {
  //
  Historique();
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.indigo.shade900,
            pinned: true,
            snap: false,
            floating: false,
            centerTitle: false,
            title: const Text(
              "Reservation",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            expandedHeight: 56,
            // flexibleSpace: FlexibleSpaceBar(
            //   title: Row(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     children: [
            //       SizedBox(
            //         height: 55,
            //         width: 130,
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Expanded(
            //               flex: 8,
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //                 children: const [
            //                   Icon(
            //                     CupertinoIcons.tickets,
            //                     size: 35,
            //                     color: Colors.white,
            //                   ),
            //                   Text("Tickets")
            //                 ],
            //               ),
            //             ),
            //             Expanded(
            //               flex: 1,
            //               child: Container(
            //                 color: Colors.blue,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            //   titlePadding: const EdgeInsets.all(0),
            //   expandedTitleScale: 1,
            //   // centerTitle: false,
            //   background: Column(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: [
            //       const SizedBox(
            //         height: 5,
            //       ),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         children: [
            //           SizedBox(
            //             width: 10,
            //           ),
            //           Text(
            //             "Reservations",
            //             style: TextStyle(
            //               color: Colors.white,
            //               fontSize: 25,
            //             ),
            //           ),
            //         ],
            //       ),
            //       const SizedBox(
            //         height: 30,
            //       ),
            //     ],
            //   ),
            // ),
            // // bottom: PreferredSize(
            //   child: Container(color: Colors.green),
            //   preferredSize: Size(50, 50),
            // ),
          ),
          SliverToBoxAdapter(
            child: Card(
              elevation: 1,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      CupertinoIcons.tickets,
                      size: 30,
                      color: Colors.black,
                    ),
                    Text(" Tickets")
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  height: 255,
                  //color: Colors.grey.shade300,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Card(
                            //color: Colors.transparent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: SizedBox(
                              //color: index.isOdd ? Colors.white : Colors.black12,
                              height: 250.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Kinashas, Matadi kibala ",
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 10),
                                          child: Align(
                                            alignment: Alignment.topCenter,
                                            child: Icon(
                                              Icons.arrow_forward,
                                              size: 13,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          //color: Colors.green,
                                          child: Text(
                                            " Kongo central, Boma",
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    color: Colors.grey.shade300,
                                    height: 1,
                                  ),
                                  Expanded(
                                    flex: 7,
                                    child: InkWell(
                                      onTap: () {
                                        //
                                        Get.to(TicketDetails());
                                      },
                                      child: Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            color: Colors.transparent,
                                            width: 50,
                                            child: ClipPath(
                                              clipper: OsIcons(),
                                              child: Container(
                                                height: 120,
                                                width: 50,
                                                color: Colors.grey,
                                                alignment: Alignment.topCenter,
                                                child: AnimatedContainer(
                                                  height: 120,
                                                  width: 50,
                                                  color: Colors.green.shade700,
                                                  duration: const Duration(
                                                      seconds: 3),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  bottom: 10, top: 7),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "15h:30",
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Text(
                                                        "comment tu vas ?",
                                                        style: TextStyle(
                                                          fontSize: 19,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: Colors
                                                              .grey.shade900,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "19h:30",
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Text(
                                                        "comment tu vas ?",
                                                        style: TextStyle(
                                                          fontSize: 19,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: Colors
                                                              .grey.shade900,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    color: Colors.grey.shade300,
                                    height: 1,
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: InkWell(
                                      onTap: () {
                                        //
                                        showSimpleModal(Infos({}), context);
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 15,
                                          bottom: 5,
                                        ),
                                        height: 50,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Durée 2h30m",
                                              style: TextStyle(
                                                color: Colors.grey.shade800,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                const Text(
                                                  "Info trajet ",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.arrow_forward_ios,
                                                  size: 13,
                                                  color: Colors.grey.shade800,
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 1,
                                    color: Colors.grey.shade300,
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: RichText(
                                              text: TextSpan(
                                                text: "11:50\n",
                                                children: [
                                                  TextSpan(
                                                    text: "Départ",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                  )
                                                ],
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w900,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            // color: Colors.green,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 20),
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
                                            child: RichText(
                                              text: TextSpan(
                                                text: "16:50\n",
                                                children: [
                                                  TextSpan(
                                                    text: "Départ",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.normal,
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
                                          ),
                                        ),
                                        Expanded(
                                          flex: 5,
                                          child: Container(
                                            padding: EdgeInsets.only(
                                              top: 13,
                                            ),
                                            alignment: Alignment.topCenter,
                                            //color: Colors.blue,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                const Text(
                                                  "37000 Fc ",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
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
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: 2,
            ),
          ),
        ],
      ),
    );
  }
}
