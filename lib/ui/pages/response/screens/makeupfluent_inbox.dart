import 'package:flutter/material.dart';
import 'package:misiontic_template/ui/app.dart';
import 'package:misiontic_template/ui/theme/text_styles.dart';

import '../../../../theme_changer.dart';
import 'makeupfluente_ingresar.dart';

// construir una clase para el widget my_app

class InboxPage extends StatelessWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      defaultBrightness: getTheme(),
      builder: (context, defaultBrightness) {
        return MaterialApp(
          title: "MAKEUPFLUENT",
          theme: ThemeData(primarySwatch: Colors.blue, brightness: defaultBrightness),
          home: Home(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        //Cuerpo de la aplicacion
        body: Cuerpo()));
  }


  //crear widget con imagen de fondo
  Widget Cuerpo() {
    return Container(
      child: Center(
          child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, //alinear contenido de columna
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Encabezado(),
          SizedBox(
            height: 20.0,
          ),
          InfoUsuario1(),
          SizedBox(
            height: 15.0,
          ),
          InfoUsuario2(),
          SizedBox(
            height: 15.0,
          ),
          InfoUsuario3(),
          SizedBox(
            height: 15.0,
          ),
          InfoUsuario4(),
          SizedBox(
            height: 15.0,
          ),
          InfoUsuario5(),
          SizedBox(
            height: 15.0,
          ),
          InfoUsuario6(),
          SizedBox(
            height: 200.0,
          ),
        //  BarraInfNav()
        ],
      )),
    );
  }

  //Crear widget para Encabezado Vista
  Widget Encabezado() {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(
          alignment: Alignment.topLeft,
          image: (AssetImage('assets/images/logo-02.png')),
          width: 300.0,
          height: 20.0,
        ),
      ],
    ));
  }

  //Crear widget para Usuario1
  Widget InfoUsuario1() {
    return Container(
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
                    fontSize: 20)),
          ],
        ));
  }

  //Crear widget para Usuario2
  Widget InfoUsuario2() {
    return Container(
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
                    fontSize: 20)),
          ],
        ));
  }

  //Crear widget para Usuario3
  Widget InfoUsuario3() {
    return Container(
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
                    fontSize: 20)),
          ],
        ));
  }

  //Crear widget para Usuario4
  Widget InfoUsuario4() {
    return Container(
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
            Text('Usuario4',
                style: TextStyle(
                    fontFamily: 'Noir_medium',
                    color: Colors.white,
                    fontSize: 20)),
          ],
        ));
  }

  //Crear widget para Usuario5
  Widget InfoUsuario5() {
    return Container(
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
            Text('Usuario5',
                style: TextStyle(
                    fontFamily: 'Noir_medium',
                    color: Colors.white,
                    fontSize: 20)),
          ],
        ));
  }

  //Crear widget para Usuario6
  Widget InfoUsuario6() {
    return Container(
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
            Text('Usuario6',
                style: TextStyle(
                    fontFamily: 'Noir_medium',
                    color: Colors.white,
                    fontSize: 20)),
          ],
        ));
  }

}
