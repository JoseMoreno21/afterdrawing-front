import 'package:afterdrawing/src/pages/GenerateInterfaces1.dart';
import 'package:afterdrawing/src/pages/GenerateInterfaces2.dart';
import 'package:afterdrawing/src/pages/GuideElement.dart';
import 'package:afterdrawing/src/pages/projects/Project.dart';
import 'package:afterdrawing/src/pages/projects/ProjectDetails.dart';
import 'package:afterdrawing/src/pages/projects/WireframeView.dart';
import 'package:afterdrawing/src/utils/Utils.dart';
import 'package:afterdrawing/src/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return CustomNavBar(
      body: Navigator(
        key: Utils.homeNavigator,
        initialRoute: "generate_interfaces1",
        onGenerateRoute: _onGenerateRoute,
      ),
    );
  }
}

Route _onGenerateRoute(RouteSettings settings) {
  Widget view = GenerateInterfaces1();

  switch (settings.name) {
    case "generate_interfaces1":
      view = GenerateInterfaces1();
      break;
    case 'project':
      // dirigir a la pagina de proyectos
      view = ProjectList();
      break;
    case "guide":
      view = GuideElement();
      break;
    case "generate_interfaces2":
      view = GenerateInterfaces2();
      break;
    case 'project_details':
      view = ProjectDetails();
      break;
    case 'wireframeview':
      view = WireframeView();
      break;
    default:
      print("Nombre de subruta: " + settings.name!);
  }

  return MaterialPageRoute<dynamic>(
    builder: (context) {
      return view;
    },
    settings: settings,
  );
}
