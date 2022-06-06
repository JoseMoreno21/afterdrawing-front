// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// pagina donde agrego las interfaces
class GenerateInterfaces extends StatefulWidget {
  @override
  _GenerateInterfacesState createState() => _GenerateInterfacesState();
}

class _GenerateInterfacesState extends State<GenerateInterfaces> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Interfaces'),
      ),
      // imagen de fondo usando una imagen de lib/src/images/fondologin.jpg
      backgroundColor: Colors.white,
      body: Card(
        // la tarjeta que contiene todo el contenido en toda la pantalla
        child: Container(
          // el contenedor que contiene todo el contenido de la tarjeta
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            // el contenedor que contiene todo el contenido de la tarjeta
            children: <Widget>[
              // el titulo de la tarjeta
              Image.asset(
                'lib/src/images/interfaceprueba.png',
                width: 900,
                fit: BoxFit.cover,
              ),
              // el contenido de la tarjeta
              const SizedBox(
                height: 20,
              ),
              // el boton para ir a la pagina de crear interfaces
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () => {},
                    // diseño del boton
                    child: const Text(
                      'Volver a Procesar',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,

                        // cursiva
                      ),
                    ),

                    // color del boton
                    color: const Color.fromARGB(255, 43, 134, 209),
                    // circular shape
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RaisedButton(
                    onPressed: () => {},
                    // diseño del boton
                    child: const Text(
                      'Guardar Interfaz',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,

                        // cursiva
                      ),
                    ),

                    // color del boton
                    color: const Color.fromARGB(255, 43, 134, 209),
                    // circular shape
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RaisedButton(
                    onPressed: () => {},
                    // diseño del boton
                    child: const Text(
                      'Descargar',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,

                        // cursiva
                      ),
                    ),

                    // color del boton
                    color: const Color.fromARGB(255, 43, 134, 209),
                    // circular shape
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
