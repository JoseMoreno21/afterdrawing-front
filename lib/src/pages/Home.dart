// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

//home page of afterdrawing who the user redirects to login page
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // tiene que ser un container para que se vea bien
        // el fondo
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('lib/src/images/fondohome.jpg'),

            fit: BoxFit.cover,
            // opacidad
            colorFilter: ColorFilter.mode(
                const Color.fromARGB(255, 202, 166, 166).withOpacity(0.8),
                BlendMode.dstATop),
          ),
        ),
        // el contenido de la pagina imagen a la izquierda y texto a la derecha que es el boton de login
        child: Row(
          // contenedor alineado a la derecha
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            SizedBox(
              // imagen
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.8,
              child: Image.asset(
                'lib/src/images/fondohome2osi.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              // texto
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Convierta sus Wireframe en Interfaces de sus Ususarios Móviles',
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Montserrat-Bold',
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Reduzca el tiempo de desarrollo y la complejidad de su proyecto',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Montserrat-Regular',
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'login');
                      },
                      color: const Color.fromARGB(255, 97, 95, 221),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Text(
                        'Comienza Ahora',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Montserrat-Bold',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 100.0),
                child: Image.asset(
                  'lib/src/images/wireframelogo.png',
                  width: 100,
                  height: 250,
                  alignment: Alignment.bottomRight,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
