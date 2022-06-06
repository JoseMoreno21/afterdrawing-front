// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

//Create a GridView of 6 elements
class GuideElement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int val = -1;
    return Scaffold(
        /*appBar: AppBar(
          title: const Text('Guía de elementos Reconocidos'),
        ),*/
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            'Guía de elementos Reconocidos',
            style: TextStyle(fontSize: 25),
          ),
        ),
        Flexible(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            children: <Widget>[
              // insert the elements here we have a widget for each element like buttons, text, images etc. like an interface

              //Checkbox and  RadioButton elements in Flutter
              Container(
                width: 100,
                padding: const EdgeInsets.all(10.0),
                //elements in the center of the container
                // the container ajusts the size of the elements
                alignment: Alignment.center,
                child: Expanded(
                  //elements in the center of the center
                  // the center ajusts the size of the aplication
                  child: Card(
                    color: Colors.blueGrey[100],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Checkbox(
                                    value: true,
                                    onChanged: (value) {},
                                  ),
                                ),
                                const Text(
                                  'Option',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Radio(
                                  value: 1,
                                  onChanged: (value) {},
                                  groupValue: val,
                                ),
                                const Text(
                                  'Option',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Checkbox(
                                  value: false,
                                  onChanged: (value) {},
                                ),
                                Container(
                                  child: const Text(
                                    'Option',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Radio(
                                  //RadioButton is marked with true
                                  value: val,
                                  onChanged: (value) {},
                                  groupValue: 2,
                                ),
                                const Text(
                                  'Option',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const Text('Checked View'),
                            const SizedBox(
                              height: 10,
                            ),
                            RaisedButton(
                              onPressed: () => {},
                              // diseño del boton
                              child: const Text('Ver Ejemplos'),

                              // color del boton
                              color: const Color.fromARGB(255, 43, 134, 209),
                              // circular shape
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //Button in container
              Container(
                width: 100,
                padding: const EdgeInsets.all(10.0),
                //elements in the center of the container
                // the container ajusts the size of the elements
                alignment: Alignment.center,
                child: Expanded(
                  //elements in the center of the center
                  // the center ajusts the size of the aplication
                  child: Card(
                    color: Colors.blueGrey[100],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: RaisedButton(
                            onPressed: () => {},
                            child: const Text("Button"),
                          ),
                        ),
                        // espacio entre los elementos
                        const SizedBox(
                          width: 40,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const Text('Button Text',
                                style: TextStyle(fontSize: 15)),
                            const SizedBox(
                              height: 10,
                            ),
                            RaisedButton(
                              onPressed: () => {},
                              // diseño del boton
                              child: const Text('Ver Ejemplos'),

                              // color del boton
                              color: const Color.fromARGB(255, 43, 134, 209),
                              // circular shape
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // search bar using the search bar widget (ganador)
              Container(
                width: 100,
                padding: const EdgeInsets.all(10.0),
                child: Expanded(
                  child: Card(
                    // Color que combina el fondo con el texto
                    color: Colors.blueGrey[100],

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 100,
                          child: SizedBox(
                            width: 100,
                            //two text fields
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 100,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      labelText: 'Label',
                                    ),
                                  ),
                                ),

                                const Divider(
                                  height: 25,
                                  color: Colors.transparent,
                                ),
                                // other label
                                SizedBox(
                                  width: 100,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      labelText: 'Input Text',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // espacio
                        const SizedBox(
                          width: 40,
                        ),
                        const Divider(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const Text('Input Text'),
                            const SizedBox(
                              height: 10,
                            ),
                            RaisedButton(
                              onPressed: () => {},
                              // diseño del boton
                              child: const Text('Ver Ejemplos'),

                              // color del boton
                              color: const Color.fromARGB(255, 43, 134, 209),
                              // circular shape
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                width: 100,
                padding: const EdgeInsets.all(10.0),
                child: Expanded(
                  child: Card(
                    // Color que combina el fondo con el texto
                    color: Colors.blueGrey[100],

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 100,
                          child: SizedBox(
                            width: 100,
                            //two text fields
                            child: IconButton(
                              icon: const Icon(Icons.home),
                              onPressed: () => {},
                              // color del boton y tamano del icono
                              color: const Color.fromARGB(255, 43, 134, 209),
                              iconSize: 40,
                            ),
                          ),
                        ),

                        // espacio
                        const SizedBox(
                          width: 40,
                        ),
                        const Divider(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const Text('Icon'),
                            const SizedBox(
                              height: 10,
                            ),
                            RaisedButton(
                              onPressed: () => {},
                              // diseño del boton
                              child: const Text('Ver Ejemplos'),

                              // color del boton
                              color: const Color.fromARGB(255, 43, 134, 209),
                              // circular shape
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Container with a image cuadro_de_texto.png
              Container(
                width: 100,
                padding: const EdgeInsets.all(10.0),
                child: Expanded(
                  child: Card(
                    // Color que combina el fondo con el texto
                    color: Colors.blueGrey[100],

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 40,
                        ),
                        Expanded(
                          child: SizedBox(
                            //image with size
                            child: Image.asset(
                              'lib/src/images/cuadro_de_texto.png',
                              width: 100,
                              fit: BoxFit.fill,

                              // color del boton y tamano del icono
                            ),
                          ),
                        ),

                        // espacio
                        const SizedBox(
                          width: 40,
                        ),
                        const Divider(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const Text('Text'),
                            const SizedBox(
                              height: 10,
                            ),
                            RaisedButton(
                              onPressed: () => {},
                              // diseño del boton
                              child: const Text('Ver Ejemplos'),

                              // color del boton
                              color: const Color.fromARGB(255, 43, 134, 209),
                              // circular shape
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Container with a image cuadro_de_texto.png
              Container(
                width: 100,
                padding: const EdgeInsets.all(10.0),
                child: Expanded(
                  child: Card(
                    // Color que combina el fondo con el texto
                    color: Colors.blueGrey[100],

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 40,
                        ),
                        Expanded(
                          child: SizedBox(
                            //image with size
                            child: Image.asset(
                              'lib/src/images/image_element_guide.jpg',
                              width: 100,
                              fit: BoxFit.fill,

                              // color del boton y tamano del icono
                            ),
                          ),
                        ),

                        // espacio
                        const SizedBox(
                          width: 40,
                        ),
                        const Divider(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const Text('Image'),
                            const SizedBox(
                              height: 10,
                            ),
                            RaisedButton(
                              onPressed: () => {},
                              // diseño del boton
                              child: const Text('Ver Ejemplos'),

                              // color del boton
                              color: const Color.fromARGB(255, 43, 134, 209),
                              // circular shape
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

// Create a Enum from widgets like buttons, searchbars, scrollbar,etc
