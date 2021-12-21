import 'package:flutter/material.dart';
import 'package:misiontic_template/ui/app.dart';
import 'package:misiontic_template/ui/theme/text_styles.dart';

import '../../../../theme_changer.dart';
import 'makeupfluente_ingresar.dart';

// construir una clase para el widget my_app
class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

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
    return (Scaffold(body: Cuerpo()));
  }

  //crear widget con imagen de fondo
  Widget Cuerpo() {
    return Container(
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage('assets/images/background.jpg'),
      //     fit: BoxFit.cover,
      //   ),
      // ),
      child: Center(
          child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, //alinear contenido de columna
        children: <Widget>[
          Text(
            "Vista",
            style: TextStyle(
                fontFamily: 'Noir_medium', color: Colors.black, fontSize: 15),
          ),
          SizedBox(
            height: 80.0,
          ),
          Text(
            "En Construcción",
            style: TextStyle(
                fontFamily: 'Noir_medium', color: Colors.black, fontSize: 15),
          ),
          SizedBox(
            height: 30.0,
          ),
        ],
      )),
    );
  }
}
