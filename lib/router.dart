import 'dart:js';

import 'package:afterdrawing/src/pages/ForgotPassword.dart';
import 'package:afterdrawing/src/pages/GenerateInterfaces.dart';
import 'package:afterdrawing/src/pages/GenerateInterfaces2.dart';
import 'package:afterdrawing/src/pages/GuideElement.dart';
import 'package:afterdrawing/src/pages/Home.dart';
import 'package:afterdrawing/src/pages/Login.dart';
import 'package:afterdrawing/src/pages/MainView.dart';
import 'package:afterdrawing/src/pages/NewPassword.dart';
import 'package:afterdrawing/src/pages/projects/Project.dart';
import 'package:afterdrawing/src/pages/Register.dart';
import 'package:afterdrawing/src/pages/projects/ProjectDetails.dart';
import 'package:afterdrawing/src/pages/projects/WireframeView.dart';
//import 'package:afterdrawing/src/pages/GenerateInterfaces1.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  // var userId = 1;
  switch (settings.name) {
    case 'login':
      return MaterialPageRoute(builder: (context) => LoginPage());
    case 'project':
      // dirigir a la pagina de proyectos
      return MaterialPageRoute(builder: (context) => ProjectList());
    case 'register':
      // dirigir a la pagina de proyectos
      return MaterialPageRoute(builder: (context) => RegisterPage());
    case 'home':
      // dirigir a la pagina de proyectos
      return MaterialPageRoute(builder: (context) => Home());
    case 'guide':
      // dirigir a la pagina de proyectos
      return MaterialPageRoute(builder: (context) => GuideElement());
    case 'forgot_password':
      return MaterialPageRoute(builder: (context) => ForgotPassword());
    case 'new_password':
      return MaterialPageRoute(builder: (context) => NewPassword());
    case 'generate_interfaces':
      return MaterialPageRoute(builder: (context) => GenerateInterfaces());
    case 'generate_interfaces1':
      return MaterialPageRoute(builder: (context) => MainView());
    /*case "generate_interfaces2":
      return MaterialPageRoute(builder: (context) => GenerateInterfaces2());*/
    /*case 'project_details':
      return MaterialPageRoute(builder: (context) => ProjectDetails());*/
    /*case 'wireframeview':
      return MaterialPageRoute(builder: (context) => WireframeView());*/
    default:
      return MaterialPageRoute(
          builder: (context) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ));
  }
}
