//import 'dart:html';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misiontic_template/constants.dart';
import 'package:misiontic_template/main.dart';
import 'package:misiontic_template/theme_changer.dart';
import 'package:misiontic_template/ui/app.dart';
import 'package:misiontic_template/ui/theme/text_styles.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';

Brightness _theme = Brightness.dark;

Future<void> setTheme() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final bool? outPut = await prefs.getBool("theme");
  if (outPut == true) {
    setState(() => _theme = Brightness.dark);
  }
  if (outPut == false) {
    setState(() => _theme = Brightness.light);
  }
}

void setState(Brightness Function() param0) {}

// construir una clase para el widget Myapp
class LoginScreen extends StatefulWidget {

  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

Brightness theeeme = Brightness.dark;

Brightness getTheme(){
  return theeeme;
}

class _LoginScreenState extends State<LoginScreen> {
  final _textController = TextEditingController();
  @override
  void initState(){
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'INGRESAR',
                    style: TextStyle(
                      color: Color(0xFF9E2A63),
                      fontFamily: 'Lemon Milk',
                      fontStyle: FontStyle.italic,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  Image(
                    image: (AssetImage('assets/images/vector logo-01-01.png')),
                    width: 150.0,
                    height: 150.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: 300.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: TextField(
                        controller: _textController,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Noir_medium',
                            color: Color(0xFFFC5C9C),
                            fontSize: 20.0),
                        decoration: InputDecoration(
                          hintText: 'Nombre de usuario',
                          fillColor: Color(0xFFFCCDE2),
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: 300.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: TextField(
                        textAlign: TextAlign.center,
                        obscureText: true, //ocultar contrasenia
                        style: TextStyle(
                            fontFamily: 'Noir_medium',
                            color: Color(0xFFFC5C9C),
                            fontSize: 20),
                        decoration: InputDecoration(
                          hintText: 'Contrase??a',
                          fillColor: Color(0xFFFCCDE2),
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextButton(
                    child: Text('No tienes cuenta? Creala',
                        style: TextStyle(
                            fontFamily: 'Noir_medium',
                            color: Color(0xFFFC5C9C),
                            fontSize: 20)),
                    onPressed: () {
                      Get.toNamed(signUp_Route);
                      print('Boton Funcionando');
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: MaterialButton(
                      color: Color(0xFFFCCDE2),
                      minWidth: 200.0,
                      height: 50.0,
                      child: Text(
                        'Listo',
                        style: TextStyle(
                            fontFamily: 'Noir_medium',
                            color: Color(0xFFFC5C9C),
                            fontSize: 20.0),
                      ),
                      onPressed: () {
                        Map data = getUsers();
                        String insertedUsername = _textController.text;
                        if (data[insertedUsername] == null) {
                          Get.snackbar(
                              'Error', 'Usuario incorrecto',
                              icon: Icon(Icons.alarm),
                              backgroundColor: Colors.red);
                        } else {
                          final name = _textController.text;
                          Get.offNamed(home_Route, arguments: name);
                        }
                        print('Boton Funcionando');
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: MaterialButton(
                      color: Color(0xFFFCCDE2),
                      minWidth: 200.0,
                      height: 50.0,
                      child: Text(
                        'Cambiar tema',
                        style: TextStyle(
                            fontFamily: 'Noir_medium',
                            color: Color(0xFFFC5C9C),
                            fontSize: 20.0),
                      ),
                      onPressed: () {
                        theeeme =  ThemeBuilder.of(context)!.getIsDarkTheme();
                        //print(theeeme);
                        ThemeBuilder.of(context)!.changeTheme();
                        //print(ThemeBuilder.of(context)!.getCurrentBrightness());
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      defaultBrightness: theeeme,
      builder: (context, defaultBrightness) {
        return MaterialApp(
          title: "MAKEUPFLUENT",
          theme: ThemeData(primarySwatch: Colors.blue, brightness: defaultBrightness),
          home: LoginScreen(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
