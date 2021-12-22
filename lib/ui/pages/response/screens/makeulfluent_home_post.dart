import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misiontic_template/constants.dart';
import 'package:misiontic_template/ui/app.dart';
import 'package:misiontic_template/ui/pages/response/screens/makeupfluente_ingresar.dart';
import 'package:misiontic_template/ui/theme/text_styles.dart';

import '../../../../theme_changer.dart';

List<Widget> posts = [
  Encabezado(),
  Post("Rodrigo", "Necesito un administrador para mi tienda, ¿alguien se le mide?"),
  SizedBox(height: 25),
  Post("Nataly", "¿Alguien sabe de tiendas ecologicas de maquillaje? Que me escriba al interno."),
  SizedBox(height: 25),
  Post("Armando", "Pedí un producto para mi esposa y salio defectuoso, se supone que mi nuevo producto está en camino. El asunto es que se ha demorado mucho en llegar, ¿alguien sabe si la aplicación puede intervenir?"),
  SizedBox(height: 25),
  Post("Juliana", "Estoy buscando labiales libres de plomo, ¿cuáles marcas me recomiendan?"),
  SizedBox(height: 25),
  Post("Luis", "Soy comerciante. Únicamente marcas fabricantes de makeup 'NON TESTED ON ANIMALS' por favor escribirme al interno, estoy interesado en comercializar al por mayor."),
  SizedBox(height: 25),
  Post("Sergio", "Necesito un administrador para mi tienda, ¿alguien se le mide?"),
  SizedBox(height: 25),
  Post("Nataly", "¿Alguien sabe de tiendas ecologicas? Que me escriba al interno."),
  SizedBox(height: 25),
  Post("Nataly", "¿Alguien sabe de tiendas ecologicas? Que me escriba al interno."),
  SizedBox(height: 25),
  Post("Nataly", "¿Alguien sabe de tiendas ecologicas? Que me escriba al interno."),
  SizedBox(height: 25),
  Post("Nataly", "¿Alguien sabe de tiendas ecologicas? Que me escriba al interno."),
  SizedBox(height: 25),

  ];

// construir una clase para el widget my_app
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: posts,)
      );
  }
}

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
        SizedBox.shrink(),
        IconButton(
          icon: Icon(
            Icons.person_rounded,
            color: Color(0xFFFC5C9C),
            size: 30,
          ),
          onPressed: () {
            print('Icono1 OK');
          },
        ),
        IconButton(
          icon: Icon(
            Icons.add,
            color: Color(0xFFFC5C9C),
            size: 30,
          ),
          onPressed: () {
            Get.toNamed(history_Route);
            print('Icono2 OK');
          },
        ),
      ],
    ));
  }

Widget Post(String nombre, String mensaje){
  return Container(
                height: 80.0,
                width: 50.0,
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
                    Text(nombre,
                        style: TextStyle(
                            fontFamily: 'Noir_medium',
                            color: Colors.white,
                            fontSize: 20.0)),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(child: Text(mensaje,
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontFamily: 'Noir_medium',
                            color: Colors.white,
                            fontSize: 14.0))),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                )
              
                );
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