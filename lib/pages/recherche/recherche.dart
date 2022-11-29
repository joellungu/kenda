import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kenda/pages/reservations/details/details.dart';
import 'rechercher_controller.dart';

class Recherche extends GetView<RechercheController> {
  RxList categorie = [].obs;
  var top = 0.0;
  Recherche() {
    //
    controller.getAllBusTranson();
    //
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade900, // Status bar color
      child: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: Scaffold(
          //backgroundColor: Colors.grey.shade150,
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                onStretchTrigger: () {
                  print("Le truc strck");
                  return Future.value();
                },
                pinned: true,
                snap: false,
                floating: false,
                expandedHeight: Get.size.height / 3.5,
                flexibleSpace: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    print('constraints=' + constraints.toString());
                    top = constraints.biggest.height;
                    return FlexibleSpaceBar(
                        centerTitle: true,
                        title: AnimatedOpacity(
                            duration: Duration(milliseconds: 300),
                            //opacity: top == MediaQuery.of(context).padding.top + kToolbarHeight ? 1.0 : 0.0,
                            opacity: 1.0,
                            child: Text(
                              top.toString(),
                              style: TextStyle(fontSize: 12.0),
                            )),
                        background: Image.network(
                          "https://images.unsplash.com/photo-1542601098-3adb3baeb1ec?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5bb9a9747954cdd6eabe54e3688a407e&auto=format&fit=crop&w=500&q=60",
                          fit: BoxFit.cover,
                        ));
                  },
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                  child: Center(
                    child: Text('Scroll to see the SliverAppBar in effect.'),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container(
                      color: index.isOdd ? Colors.white : Colors.black12,
                      height: 100.0,
                      child: Center(
                        child: Text('$index', textScaleFactor: 5),
                      ),
                    );
                  },
                  childCount: 20,
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
