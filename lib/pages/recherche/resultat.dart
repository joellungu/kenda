import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kenda/pages/recherche/infos.dart';
import 'package:kenda/utils/utils.dart';

import 'resultat_controller.dart';

// class Resultat extends GetView<ResultatController> {
//   @override
//   State<StatefulWidget> createState() {
//     return _Resultat();
//   }
// }

class Resultat extends GetView<ResultatController> {
  //
  Map demande;
  Resultat(this.demande);
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.indigo.shade900,
            pinned: true,
            snap: false,
            floating: false,
            centerTitle: false,
            // title: const Text(
            //   "Choix du bus",
            //   style: TextStyle(
            //     color: Colors.white,
            //   ),
            // ),
            // leading: IconButton(
            //   onPressed: () {
            //     //
            //   },
            //   icon: Icon(
            //     Icons.arrow_back,
            //     color: Colors.white,
            //   ),
            // ),
            expandedHeight: Get.size.height / 5,
            flexibleSpace: FlexibleSpaceBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 55,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 8,
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(
                                  CupertinoIcons.bus,
                                  size: 35,
                                  color: Colors.white,
                                ),
                                Text("Bus")
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              titlePadding: const EdgeInsets.all(0),
              expandedTitleScale: 1,
              background: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Choix du bus",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "  Choix du bus   ",
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 15,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.grey.shade400,
                        size: 20,
                      ),
                      Text(
                        "   Choix du bus",
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
              // centerTitle: false,
            ),
            // bottom: PreferredSize(
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "Du ${DateTime.now().day}, ${getMoisEnLettre(DateTime.now().month)}, ${DateTime.now().year} "),
                    Text("Total de bus"),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Card(
                  child: Container(
                    //color: index.isOdd ? Colors.white : Colors.black12,
                    height: 170.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // index.isOdd
                        //     ? Expanded(
                        //         flex: 2,
                        //         child: Container(),
                        //       )
                        //     : Container(),
                        Expanded(
                          flex: 7,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 5,
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
                                                  fontWeight: FontWeight.normal,
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
                                                  fontWeight: FontWeight.normal,
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
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              size: 13,
                                              color: Colors.green.shade800,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "12 Places disponible",
                                        style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          const Text("LOGO"),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
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
                      ],
                    ),
                  ),
                );
              },
              childCount: 14,
            ),
          ),
        ],
      ),
    );
  }
}
