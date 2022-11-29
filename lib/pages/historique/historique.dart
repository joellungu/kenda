import 'dart:ui';

import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kenda/pages/historique/details_ticket.dart';

class Historiques extends StatelessWidget {
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
            title: const Text("Historiques"),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.filter_list_sharp,
                  color: Colors.blue,
                ),
              ),
            ],
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
          body: ListView(
            padding: const EdgeInsets.all(10),
            children: List.generate(2, (index) {
              return Card(
                elevation: 0,
                color: Colors.grey.shade200,
                child: InkWell(
                  onTap: () {
                    //
                    Get.to(DetailsTicket());
                  },
                  child: SizedBox(
                    height: Get.size.height / 4.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            decoration: BoxDecoration(
                              //color: Colors.white,
                              border: Border.all(
                                color: Colors.blue,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 8,
                                  child:
                                      Image.asset("assets/bus${index + 1}.png"),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${index + 1} places",
                                      //nunito
                                      //cutiveMono
                                      style: GoogleFonts.cutiveMono(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          //
                          flex: 7,
                          child: Blur(
                            blur: 5,
                            colorOpacity: 0.3,
                            //blurColor: Theme.of(context).primaryColor,
                            child: Container(
                              padding: const EdgeInsets.all(15),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        ExactAssetImage("assets/qr_code.png")),
                                border: Border.all(
                                  color: Colors.blue,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                              ),
                              child: Blur(
                                blur: 2,
                                colorOpacity: 0.3,
                                //blurColor: Theme.of(context).primaryColor,
                                child: Image.asset("assets/qr_code.png"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }

  Widget menuContent(String titre, String status, String image) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      height: Get.size.height / 10,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: SizedBox(
              child: Image.asset(
                "assets/$image",
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      titre,
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      status,
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.normal,
                        color: Colors.blue,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
