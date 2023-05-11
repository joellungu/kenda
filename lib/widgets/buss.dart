import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kenda/pages/reservations/reservation_controller.dart';

class Buss extends StatelessWidget {
  List l;
  Map e;
  Buss(this.l, this.e) {
    //print("infos bus: ${e['bus']}");
  }

  ReservationController reservationController = Get.find();
  //
  @override
  Widget build(BuildContext context) {
/*
"place"
    return Center(
      child: Table(
        columnWidths: {2: FractionColumnWidth(.08)},
        defaultColumnWidth: const FractionColumnWidth(0.20),
        children: List.generate(
          12,
          (index) {
            return TableRow(
              children: List.generate(
                5,
                (i) {
                  if (i != 2) {
                    return Card(
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      child: Container(
                        height: 40,
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.chair_outlined,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            );
          },
        ),
      ),
    );

*/
    return GridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      childAspectRatio: 1,
      children: List.generate(
        e['bus']['capacite'],
        (index) {
          bool choix = false;
          //
          l.forEach((element) {
            choix = element['emplacement'] == index;
          });
          //
          if (choix) {
            return Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: Icon(
                Icons.close,
                color: Colors.red.shade900,
                size: 40,
              ),
            );
          } else {
            RxBool s = false.obs;
            return InkWell(
              onTap: () {
                //
                s.value = !s.value;
                if (s.value) {
                  reservationController.places.add(index);
                } else {
                  reservationController.places.remove(index);
                }
                //
                print(index);
              },
              child: Obx(
                () => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: s.value ? Colors.green : Colors.black, width: 1),
                  ),
                  child: Icon(
                    s.value ? Icons.check : Icons.chair_outlined,
                    color: Colors.grey,
                    size: 40,
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
