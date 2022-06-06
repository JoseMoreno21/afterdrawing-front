const textoPrueba = '''        (Problemas con servidor - Texto de Prueba)

import 'package:flutter/material.dart';
    void main() => runApp(const MyApp());
    class MyApp extends StatelessWidget
    {
        const MyApp({Key? key}) : super(key: key);
        @override
        Widget build(BuildContext context)
        {
            return MaterialApp
                (
                home: Scaffold
                    (
                    appBar: AppBar(),
                    body: Stack
                        (
                        children: <Widget>
                            [
                            Container
                                (
                                alignment: Alignment.bottomCenter,
                                padding: const EdgeInsets.all(10),
                                child: TextField
                                    (
                                    decoration: const InputDecoration            
                                        (
                                        border: OutlineInputBorder(),
                                        labelText: 'Input Text',
                                        )
                                    )
                                ),
                            Container
                                (
                                alignment: Alignment.bottomCenter,
                                padding: const EdgeInsets.all(10),
                                child: TextField
                                    (
                                    decoration: const InputDecoration
                                        (
                                        border: OutlineInputBorder(),
                                        labelText: 'Input Text',
                                        )
                                    )
                                ),
                            Container
                                (
                                child: Align
                                    (
                                    alignment: Alignment.centerRight,
                                    child: Text
                                        (
                                        'Some text here',
                                        style: TextStyle(),
                                        )
                                    )
                                ),
                            ]
                        )
                    )
                );
        }
    }
  ''';
