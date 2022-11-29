import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kenda/pages/profil/nous_contacter/nous_contacter.dart';
import 'package:kenda/pages/profil/paiement/mode_paiement.dart';

import 'infos_personnel.dart/infos_personnel.dart';

class Profil extends StatelessWidget {
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
            title: const Text("Profil"),
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
            padding: EdgeInsets.all(10),
            children: [
              InkWell(
                onTap: () {
                  //
                  Get.to(InfosPersonnel());
                },
                child: menuContent("Information personnel",
                    "accounts _ user, users, profile, account, man, people, website, browser, webpage@2x.png"),
              ),
              InkWell(
                onTap: () {
                  //
                  Get.to(ModePaiement());
                },
                child: menuContent("Mode de paiement",
                    "finance _ savings, saving, bank, piggy bank, coin, coins, interest, man, people@2x.png"),
              ),
              InkWell(
                onTap: () {
                  //
                },
                child: menuContent("Termes et conditions d'utilisation",
                    "security _ shield, protection, safety, insurance, man, people@2x.png"),
              ),
              InkWell(
                onTap: () {
                  //
                },
                child: menuContent("Politique de confidencialité",
                    "security _ lock, key, login, safety, protection, padlock, locked, unlock@2x.png"),
              ),
              // InkWell(
              //   onTap: () {
              //     //
              //   },
              //   child: menuContent("Nos partenaires",
              //       "accounts _ user, users, profile, account, man, people, website, browser, webpage@2x.png"),
              // ),
              InkWell(
                onTap: () {
                  //
                  Get.to(NousContacetr());
                },
                child: menuContent("Nous contacter",
                    "emails, communication _ email, mail, mailbox, postage, letter, send, man, people@2x.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }

//
  Widget menuContent(String titre, String image) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      height: 100,
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
                      titre,
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.normal,
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
