import 'package:afterdrawing/src/endpoints/endpoints.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/gestures.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String url = "https://easystory-backend.herokuapp.com/api/";
  TextEditingController userText = new TextEditingController();
  TextEditingController passText = new TextEditingController();
  List dataUsers = [];
  bool userExists = false;
  bool userValid = true;
  bool passValid = true;

  Future<String> getUser() async {
    var response = await http.get(Uri.parse(url + "users"), headers: headers());

    setState(() {
      var extractdata = json.decode(response.body);
      dataUsers = extractdata['content'];
    });
    print(dataUsers);
    return response.body.toString();
  }

  @override
  void initState() {
    super.initState();
    getUser();
  }

  @override
  Widget build(BuildContext context) {
    var userId;
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          const Image(
            image: AssetImage('lib/src/images/fondologin.jpg'),
            fit: BoxFit.cover,
            color: Colors.black54,
            colorBlendMode: BlendMode.darken,
          ),
          ListView(
            padding: const EdgeInsets.only(
                top: 210, left: 40, right: 40, bottom: 40),
            children: <Widget>[
              Image.asset(
                'lib/src/images/wireframelogo.png',
                height: 100,
                width: 100,
              ),
              Form(
                  child: Theme(
                data: ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.teal,
                    inputDecorationTheme: const InputDecorationTheme(
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 20))),
                child: Container(
                  padding: const EdgeInsets.only(bottom: 40.0, top: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                        controller: userText,
                        decoration: InputDecoration(
                          labelText: "Ingresa usuario",
                          errorText: userValid ? null : 'El usuario no existe',
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      TextFormField(
                        controller: passText,
                        decoration: InputDecoration(
                          labelText: "Ingresa contraseña",
                          errorText:
                              passValid ? null : 'Ingrese una contraseña',
                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
              )),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    for (var cosa in dataUsers) {
                      if (cosa['username'] == userText.text) {
                        userExists = true;
                        userId = cosa['id'];
                      }
                    }
                    setState(() {
                      userExists ? userValid = true : userValid = false;
                      passText.text.isNotEmpty
                          ? passValid = true
                          : passValid = false;
                    });
                    if (userValid && passValid) {
                      Navigator.pushNamed(context, 'profile',
                          arguments: userId);
                    }
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(400, 50)),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )),
                  ),
                  child: const Text('Iniciar sesión'),
                ),
              ),
              const Divider(),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: '¿No tienes una cuenta? ¡Regístrate!',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, 'register');
                      },
                  ),
                ),
              ),
              const Divider(),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: '¿Olvidaste tu contraseña?',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, 'forgot_password');
                      },
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
