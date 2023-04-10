import 'package:flutter/material.dart';
import 'package:kenda/pages/reservations/emplacement.dart';

import 'modal.dart';

class Horaire extends StatelessWidget {
  Map e;
  DateTime date;
  Horaire(this.e, this.date);
  //
  @override
  Widget build(BuildContext context) {
    int prix = int.parse("${e['prix']}".split(".")[0]);
    return Card(
      child: SizedBox(
        //color: index.isOdd ? Colors.white : Colors.black12,
        height: 130.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 7,
              child: InkWell(
                onTap: () {
                  //
                  showSimpleModal(Emplacement(), context);
                  //
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.people),
                            Text(
                              "12 Places disponible",
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                              ),
                            ),
                            const Text("LOGO"),
                            // Text(
                            //   "$prix Fc ",
                            //   style: TextStyle(
                            //     fontSize: 20,
                            //     fontWeight: FontWeight.w500,
                            //   ),
                            // )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.grey.shade300,
                      height: 1,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: const EdgeInsets.only(left: 15, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.calendar_month,
                              color: Colors.grey.shade700,
                            ),
                            Text(
                              "Pour le ${[
                                "Lundi",
                                "Mardi",
                                "Mercredi",
                                "Jeudi",
                                "Vendredi",
                                "Samedi",
                                "Dimanche"
                              ][e['jourDepart'] - 1]}, ${date.day} / ${date.month} / ${date.year}",
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.w900,
                                fontSize: 18,
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
            ),
          ],
        ),
      ),
    );
  }

  String getDuree(String heureDepart, String heureArrive, int nombreJours) {
    //
    DateTime d1 = DateTime(0, 1, 1, int.parse(heureDepart.split(":")[0]),
        int.parse(heureDepart.split(":")[1]));
    DateTime d2 = DateTime(0, 1, 1, int.parse(heureArrive.split(":")[0]),
        int.parse(heureArrive.split(":")[1]));
    //
    Duration heure = d2.difference(d1);
    //DateUtils.getDaysInMonth(widget.annee, widget.mois);
    //
    return "${nombreJours == 1 ? heure.inHours : '$nombreJours J et ${heure.inHours}'} h";
  }
}
