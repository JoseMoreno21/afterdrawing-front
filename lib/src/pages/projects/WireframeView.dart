import 'package:afterdrawing/src/constants/textoPrueba.dart';
import 'package:afterdrawing/src/pages/projects/Project.dart';
import 'package:flutter/material.dart';

class WireframeView extends StatefulWidget {
  WireframeView({
    Key? key,
  }) : super(key: key);

  @override
  State<WireframeView> createState() => _WireframeViewState();
}

class _WireframeViewState extends State<WireframeView> {
  Project nameProjectArgument = Project("title", "description", 1);
  String nameWireframeArgument = "My interface";
  String wireframeContent = textoPrueba;

  @override
  Widget build(BuildContext context) {
    var argument = ModalRoute.of(context)!.settings.arguments;

    if (argument != null) {
      nameProjectArgument =
          ModalRoute.of(context)!.settings.arguments as Project;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(nameProjectArgument.title + ' - ' + nameWireframeArgument),
      ),
    );
  }
}
