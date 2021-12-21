import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misiontic_template/constants.dart';
import 'package:misiontic_template/ui/app.dart';
import 'package:misiontic_template/ui/pages/response/screens/makeupfluente_ingresar.dart';
import 'package:misiontic_template/ui/theme/text_styles.dart';

import '../../../../theme_changer.dart';

// construir una clase para el widget my_app
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = Get.arguments;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //Contenedor para encabezado Vista
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  alignment: Alignment.topLeft,
                  image: (AssetImage('assets/images/logo-02.png')),
                  width: 300.0,
                  height: 20.0,
                ),
                SizedBox.shrink(),
                IconButton(
                  icon: Icon(
                    Icons.add,
                    color: Color(0xFFFC5C9C),
                    size: 30,
                  ),
                  onPressed: () {
                    Get.toNamed(post_Route);
                    print('Icono1 OK');
                  },
                ),
              ],
            )),
            //Presentar nombre de Usuario en Vista
            Text("Hola ${name}"),
            SizedBox(
              height: 15.0,
            ),
            //Contenedor para Encabezado Usuario 1
            Container(
                height: 40.0,
                width: 380.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFF9E2A63),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image(
                      alignment: Alignment.topLeft,
                      image: (AssetImage('assets/images/user.png')),
                      width: 50.0,
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Usuario1',
                        style: TextStyle(
                            fontFamily: 'Noir_medium',
                            color: Colors.white,
                            fontSize: 20.0)),
                  ],
                )),
            SizedBox(
              height: 5.0,
            ),
            //Representacion Texto Escrito por Usuario
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontFamily: 'Noir_medium',
                  color: Color(0xFFFC5C9C),
                  fontSize: 20),
            ),
            SizedBox(
              height: 15.0,
            ),
            //Contenedor para Encabezado Usuario 2
            Container(
                height: 40.0,
                width: 380.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFF9E2A63),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image(
                      alignment: Alignment.topLeft,
                      image: (AssetImage('assets/images/user.png')),
                      width: 50.0,
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Usuario2',
                        style: TextStyle(
                            fontFamily: 'Noir_medium',
                            color: Colors.white,
                            fontSize: 20.0)),
                  ],
                )),
            SizedBox(
              height: 5.0,
            ),
            //Representacion Texto Escrito por Usuario2
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontFamily: 'Noir_medium',
                  color: Color(0xFFFC5C9C),
                  fontSize: 20),
            ),
            SizedBox(
              height: 15.0,
            ),
            //Contenedor para Encabezado Usuario 3
            Container(
                height: 40.0,
                width: 380.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFF9E2A63),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image(
                      alignment: Alignment.topLeft,
                      image: (AssetImage('assets/images/user.png')),
                      width: 50.0,
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Usuario3',
                        style: TextStyle(
                            fontFamily: 'Noir_medium',
                            color: Colors.white,
                            fontSize: 20.0)),
                  ],
                )),
            SizedBox(
              height: 5.0,
            ),
            //Representacion Texto Escrito por Usuario2
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontFamily: 'Noir_medium',
                  color: Color(0xFFFC5C9C),
                  fontSize: 20),
            ),
            SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      defaultBrightness: getTheme(),
      builder: (context, defaultBrightness) {
        return MaterialApp(
          title: "MAKEUPFLUENT",
          theme: ThemeData(primarySwatch: Colors.blue, brightness: defaultBrightness),
          home: HomePage(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}