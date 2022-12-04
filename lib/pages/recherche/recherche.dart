import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:kenda/pages/recherche/lieu.dart';
import 'package:kenda/pages/recherche/lieu_controller.dart';
import 'package:kenda/pages/reservations/lieux.dart';
import 'package:kenda/utils/utils.dart';

class Recherche extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Recherche();
  }
}

class _Recherche extends State<Recherche> {
  RxList categorie = [].obs;
  double top = 0.0;
  double y = -1.5;
  double y1 = -1.5;
  double y2 = -1;
  //
  RxBool renverser = false.obs;
  //
  String jour = "", mois = "", annee = "";
  //
  String nombreP = '1';

  // List of items in our dropdown menu
  var items = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
  ];
  //
  LieuController lieuController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo.shade900, // Status bar color
      child: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: Scaffold(
          //backgroundColor: Colors.grey.shade150,
          body: Stack(
            children: [
              NotificationListener<ScrollNotification>(
                onNotification: (sn) {
                  print("p: ${sn.metrics.pixels}");
                  print("eA: ${sn.metrics.extentAfter}");
                  print("eB: ${sn.metrics.extentBefore}");
                  print("eI: ${sn.metrics.extentInside}");
                  print("msE: ${sn.metrics.maxScrollExtent}");
                  print("msE: ${sn.metrics.minScrollExtent}");

                  if (sn.metrics.pixels <= 190) {
                    print('Get more data');
                    y = y1;
                    setState(() {});
                  } else {
                    y = y2;
                    setState(() {});
                  }
                  return true;
                },
                child: CustomScrollView(
                  slivers: <Widget>[
                    SliverAppBar(
                      backgroundColor: Colors.indigo.shade900,
                      onStretchTrigger: () {
                        print("Le truc strck");
                        return Future.value();
                      },
                      pinned: true,
                      snap: false,
                      floating: false,
                      expandedHeight: Get.size.height / 3.5,
                      flexibleSpace: FlexibleSpaceBar(
                        expandedTitleScale: 2,
                        background: Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          //
                                        },
                                        icon: Icon(
                                          Icons.help,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Horaires et billets",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          //
                                        },
                                        icon: Icon(
                                          Icons.help,
                                          color: Colors.indigo.shade900,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
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
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20),
                                              ),
                                            ),
                                            child: Lieu(0),
                                          );
                                        },
                                      );
                                      //
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        Colors.indigo.shade800,
                                      ),
                                      elevation: MaterialStateProperty.all(0),
                                    ),
                                    child: SizedBox(
                                      width: Get.size.width / 1.2,
                                      height: 50,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Obx(
                                              () => Text(
                                                renverser.value
                                                    ? "Arrivée"
                                                    : "Départ",
                                                style: TextStyle(
                                                  color: Colors.grey.shade500,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 9,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Obx(
                                                  () => Text(
                                                    renverser.value
                                                        ? lieuController
                                                            .arrive.value
                                                        : lieuController
                                                            .depart.value,
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      color:
                                                          Colors.grey.shade400,
                                                      fontSize: 20,
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
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      showModalBottomSheet(
                                        context: context,
                                        isScrollControlled: true,
                                        builder: (c) {
                                          return Container(
                                            height: Get.size.height / 1.05,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20),
                                              ),
                                            ),
                                            child: Lieu(1),
                                          );
                                        },
                                      );
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        Colors.indigo.shade800,
                                      ),
                                      elevation: MaterialStateProperty.all(0),
                                    ),
                                    child: SizedBox(
                                      width: Get.size.width / 1.2,
                                      height: 50,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Obx(
                                              () => Text(
                                                renverser.value
                                                    ? "Départ"
                                                    : "Arrivée",
                                                style: TextStyle(
                                                  color: Colors.grey.shade500,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 9,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Obx(
                                                  () => Text(
                                                    renverser.value
                                                        ? lieuController
                                                            .depart.value
                                                        : lieuController
                                                            .arrive.value,
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      color:
                                                          Colors.grey.shade400,
                                                      fontSize: 20,
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
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Via",
                                          style: TextStyle(
                                            fontSize: 17.0,
                                            color: Colors.grey.shade400,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            //
                                          },
                                          icon: Icon(
                                            Icons.help,
                                            color: Colors.indigo.shade900,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: InkWell(
                                  onTap: () {
                                    renverser.value =
                                        renverser.value ? false : true;
                                  },
                                  child: Container(
                                    height: 32,
                                    width: 32,
                                    // foregroundDecoration: BoxDecoration(
                                    //   color: Colors.yellow,
                                    //   borderRadius: BorderRadius.circular(16),
                                    // ),
                                    decoration: BoxDecoration(
                                      color: Colors.indigo.shade900,
                                      border: Border.all(
                                        color: Colors.indigo.shade700,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: RotatedBox(
                                      quarterTurns: 45,
                                      child: Icon(
                                        Icons.sync_alt,
                                        color: Colors.grey.shade500,
                                      ),
                                    ),
                                    //color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        centerTitle: false,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: 300,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                //
                                showDatePicker(
                                  context: context,

                                  firstDate: DateTime.now(),
                                  lastDate: DateTime(DateTime.now().year,
                                      DateTime.now().month + 1),
                                  //currentDate: DateTime.now(),
                                  initialDate: DateTime.now(),
                                  // builder: (context, child) {
                                  //   return Theme(
                                  //     data: Theme.of(context).copyWith(
                                  //       colorScheme: ColorScheme.light(
                                  //         primary: Colors
                                  //             .indigo, // <-- SEE HERE
                                  //         onPrimary:
                                  //             Colors.redAccent, // <-- SEE HERE
                                  //         onSurface:
                                  //             Colors.black, // <-- SEE HERE
                                  //       ),
                                  //       textButtonTheme: TextButtonThemeData(
                                  //         style: TextButton.styleFrom(
                                  //           primary: Colors
                                  //               .white, // button text color
                                  //         ),
                                  //       ),
                                  //     ),
                                  //     child: child!,
                                  //   );
                                  // },
                                ).then((value) {
                                  //
                                  setState(() {
                                    jour = "${value!.day}";
                                    mois = getMoisEnLettre(value.month);
                                    annee = "${value.year}";
                                  });
                                });
                                //
                              },
                              child: Container(
                                height: 50,
                                width: Get.size.width / 1.1,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.grey.shade300,
                                      width: 1,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        "Jour",
                                        style: TextStyle(
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        flex: 8,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            jour != ""
                                                ? Text(
                                                    "$jour, $mois, $annee ",
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                    ),
                                                  )
                                                : const Text("Aujourd'hui "),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: Colors.grey.shade600,
                                              size: 13,
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                //
                              },
                              child: Container(
                                height: 50,
                                width: Get.size.width / 1.1,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.grey.shade300,
                                      width: 1,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: const [
                                          Icon(
                                            Icons.person_add_outlined,
                                            size: 30,
                                            color: Colors.black,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 6,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: const [
                                          Text(
                                            "Nombre de personne   ",
                                            style: TextStyle(
                                              fontSize: 17,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton(
                                          // Initial Value
                                          isExpanded: true,
                                          value: nombreP,
                                          style: const TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          // Down Arrow Icon
                                          icon: const Icon(
                                              Icons.keyboard_arrow_down),

                                          // Array list of items
                                          items: items.map((String items) {
                                            return DropdownMenuItem(
                                              value: items,
                                              child: Text(items),
                                            );
                                          }).toList(),
                                          // After selecting the desired option,it will
                                          // change button value to selected value
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              nombreP = newValue!;
                                            });
                                          },
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
                            /*
                              Container(
                                height: 50,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                width: Get.size.width / 1,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.grey.shade300,
                                      width: 1,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        "Adulte",
                                        style: TextStyle(
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        flex: 8,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              "Aller ",
                                              style: TextStyle(
                                                fontSize: 17,
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: Colors.grey.shade600,
                                              size: 13,
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                            */
                            const SizedBox(
                              height: 30,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                if (lieuController.depart.value.isNotEmpty &&
                                    lieuController.arrive.value.isNotEmpty) {
                                  //
                                } else {
                                  //
                                  Get.snackbar(
                                    "Attention",
                                    "Veuillez selectionner le lieu de départ et d'arrivé.",
                                    colorText: Colors.white,
                                    snackStyle: SnackStyle.GROUNDED,
                                  );
                                  //
                                }
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.green.shade800,
                                ),
                                elevation: MaterialStateProperty.all(0),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                height: 50,
                                child: Text(
                                  "Rechercher",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                width: Get.size.width / 1.2,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return Container(
                            color: index.isOdd ? Colors.white : Colors.black12,
                            height: 70.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 7,
                                  child: Container(),
                                ),
                                const Expanded(
                                  flex: 2,
                                  child: RotatedBox(
                                    quarterTurns: 45,
                                    child: Icon(
                                      Icons.sync_alt,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        childCount: 7,
                      ),
                    ),
                  ],
                ),
              ),
              AnimatedAlign(
                alignment: Alignment(0, y),
                duration: const Duration(milliseconds: 800),
                child: Container(
                  height: 55,
                  color: Colors.indigo.shade900,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 30,
                          width: 30,
                        ),
                      ),
                      Text(
                        "KENDA",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.normal),
                      ),
                      InkWell(
                        onTap: () {
                          //Get.to(Lunette());
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Filtre extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Filtre();
  }
}

class _Filtre extends State<Filtre> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Text("Type"),
        Text("Tranche horaire"),
        Text("Prix"),
      ],
    );
  }
}
