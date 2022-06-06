import 'package:afterdrawing/src/utils/CustomScrollBehavior.dart';
import 'package:flutter/material.dart';
import 'router.dart' as router;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'generate_interfaces1',
      onGenerateRoute: router.generateRoute,
    );
  }
}
