//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misiontic_template/constants.dart';
import 'package:misiontic_template/ui/app.dart';
import 'package:misiontic_template/ui/theme/text_styles.dart';

import '../../../../theme_changer.dart';
import 'makeupfluente_ingresar.dart';

// construir una clase para el widget Myapp
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _textController = TextEditingController();
  @override
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
                    'REGISTRARSE',
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
                    height: 30.0,
                  ),
                  Container(
                    width: 300.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Noir_medium',
                            color: Color(0xFFFC5C9C),
                            fontSize: 20),
                        decoration: InputDecoration(
                          hintText: 'Nombre de Usuario',
                          fillColor: Color(0xFFFCCDE2),
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
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
                          hintText: 'Correo',
                          fillColor: Color(0xFFFCCDE2),
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
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
                          hintText: 'Contraseña',
                          fillColor: Color(0xFFFCCDE2),
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
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
                        if (_textController.text.isEmpty) {
                          Get.snackbar(
                              'Error', 'Campo Correo no puede estar vacio',
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      defaultBrightness: getTheme(),
      builder: (context, defaultBrightness) {
        return MaterialApp(
          title: "MAKEUPFLUENT",
          theme: ThemeData(primarySwatch: Colors.blue, brightness: defaultBrightness),
          home: SignUp(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}