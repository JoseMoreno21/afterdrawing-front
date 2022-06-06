import 'package:afterdrawing/src/constants/textoPrueba.dart';
import 'package:afterdrawing/src/core/provider/wireframeProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GenerateInterfaces2 extends StatefulWidget {
  GenerateInterfaces2({Key? key}) : super(key: key);

  @override
  State<GenerateInterfaces2> createState() => _GenerateInterfaces2State();
}

class _GenerateInterfaces2State extends State<GenerateInterfaces2> {
  final nameImage = "Prueba%201.PNG";

  WireframeProvider wireframeProvider = WireframeProvider();

  ScrollController _scrollController =
      ScrollController(/*initialScrollOffset: 50.0*/);

  String convertListToString(List<String> listStrings) {
    var concatenate = StringBuffer();

    listStrings.forEach((element) {
      concatenate.writeln(element);
    });

    return concatenate.toString();
  }

  var isCopied = false;

  @override
  Widget build(BuildContext context) {
    var argument = ModalRoute.of(context)!.settings.arguments;

    String nameFileArgument;
    if (argument == null) {
      nameFileArgument = textoPrueba;
    } else {
      nameFileArgument = ModalRoute.of(context)!.settings.arguments as String;
    }

    return Scaffold(
      body: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'Generador de Interfaces',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
            //Contenedor de la imagen y codigo descargable
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  child: Column(
                    //Columna del archivo descargado con un titulo
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Código generado",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      FutureBuilder(
                          future: wireframeProvider
                              .getWireframeInfo(nameFileArgument),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                    ConnectionState.done &&
                                snapshot.hasData) {
                              var textCode = convertListToString(
                                  snapshot.data as List<String>);

                              return CodeView(textCode);
                            } else if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return Container(
                                width: 400,
                                height: 550,
                                child: Center(
                                  child: CircularProgressIndicator.adaptive(),
                                ),
                              );
                            } else {
                              return CodeView(textoPrueba);
                              /*return Container(
                                width: 400,
                                height: 550,
                                child: Center(
                                  child: Text("Error con el servidor"),
                                ),
                              );*/
                            }
                          }),
                      SizedBox(
                        height: 30,
                      ),
                      isCopied
                          ? Container(
                              margin: EdgeInsets.only(left: 20, right: 20),
                              width: 400,
                              height: 25,
                              color: Colors.green[200],
                              child: Center(
                                  child: Text("Copiado al portapapeles!",
                                      style: TextStyle(
                                          color: Colors.green[800],
                                          fontWeight: FontWeight.bold))))
                          : SizedBox(
                              height: 0,
                            ),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            wireframeProvider.downloadCode();
                          },
                          child: Text("Descargar código"))
                    ],
                  ),
                ),
                Flexible(
                  child: FadeInImage(
                      width: 200,
                      placeholder:
                          AssetImage("lib/src/images/wireframelogo.png"),
                      image: NetworkImage(
                          'http://localhost:8081/api/get/wireframe/${nameFileArgument}'),
                      imageErrorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          "lib/src/images/wireframelogo.png",
                          width: 400,
                        );
                      }),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget CodeView(String contentCode) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      width: 400,
      height: 550,
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Scrollbar(
          controller: _scrollController,
          child: SingleChildScrollView(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            child: SelectableText(
              contentCode,
              scrollPhysics: ClampingScrollPhysics(),
              toolbarOptions: ToolbarOptions(copy: true),
              onTap: () {
                Clipboard.setData(ClipboardData(text: contentCode));
                setState(() {
                  if (!isCopied) {
                    isCopied = true;
                  }
                  print(isCopied.toString());
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
