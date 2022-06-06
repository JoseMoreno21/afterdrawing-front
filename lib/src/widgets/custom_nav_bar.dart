import 'package:afterdrawing/router.dart';
import 'package:afterdrawing/src/pages/Home.dart';
import 'package:flutter/material.dart';

import '../utils/Utils.dart';

class CustomNavBar extends StatelessWidget {
  //Este es el que voy a utilizar
  final Widget body;
  const CustomNavBar({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,

      appBar: AppBar(
        title: Image.asset('lib/src/images/wireframelogo.png',
            width: 65, height: 60, alignment: Alignment.bottomRight),
        toolbarHeight: 65,
        actions: <Widget>[
          ElevatedButton(
              onPressed: () {
                Utils.homeNavigator.currentState!
                    .pushNamed("generate_interfaces1");
              },
              child: Text(
                "Generador",
                style: TextStyle(fontSize: 17),
              )),
          ElevatedButton(
              onPressed: () {
                Utils.homeNavigator.currentState!.pushNamed("project");
              },
              child: Text("Projectos", style: TextStyle(fontSize: 17))),
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: ElevatedButton(
                onPressed: () {
                  Utils.homeNavigator.currentState!.pushNamed("guide");
                },
                child: Text("Guía", style: TextStyle(fontSize: 17))),
          )
        ],
      ),
      body: body,
    );
  }
}
