import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ModePaiement extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ModePaiement();
  }
}

class _ModePaiement extends State<ModePaiement> {
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
              title: const Text("Mode de paiement"),
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
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: SizedBox(
                      child: Image.asset(
                        "assets/finance _ savings, saving, bank, piggy bank, coin, coins, interest, man, people@2x.png",
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      //
                      showSave("Vodacome");
                    },
                    //elevation: 1,
                    child: SizedBox(
                      height: 50,
                      width: Get.size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.location_on,
                            color: Colors.green,
                          ),
                          Text(
                            "Téléphone",
                          ),
                          Icon(
                            Icons.edit,
                            color: Colors.black,
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
                      showSave("Orange");
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
                            "Téléphone",
                          ),
                          Icon(
                            Icons.edit,
                            color: Colors.black,
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
                      showSave("Airtel");
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
                            "Téléphone",
                          ),
                          Icon(
                            Icons.edit,
                            color: Colors.black,
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
                      showSave("Africell");
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
                            "Téléphone",
                          ),
                          Icon(
                            Icons.edit,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  showSave(String reseau) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Téléphone"),
          content: Container(
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const TextField(
                  maxLength: 9,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.phone_android,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    //
                    //Get.to(Recherche());
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
                          "Enregistrer",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
