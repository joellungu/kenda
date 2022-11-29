import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kenda/pages/recherche/recherche.dart';
import 'package:kenda/pages/reservations/lieux.dart';

class Reservation extends StatelessWidget {
  const Reservation({Key? key}) : super(key: key);

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
            title: Text("Réservation"),
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
          ),
          body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          //
                          showSearch(
                              context: context,
                              // delegate to customize the search bar
                              delegate: CustomSearchDelegate());
                        },
                        //elevation: 1,
                        child: SizedBox(
                          height: 50,
                          width: Get.size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.blue,
                              ),
                              Text(
                                "Point de depart",
                              ),
                              Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          //
                        },
                        //elevation: 1,
                        child: SizedBox(
                          height: 50,
                          width: Get.size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.green,
                              ),
                              Text(
                                "Point d'arrivé",
                              ),
                              Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          "assets/real estate _ blueprint, blueprints, plan, plans, city, development, building@2x.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          //
                          Get.to(Recherche());
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
                                "Lancer la recherche",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
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
    );
  }
}
