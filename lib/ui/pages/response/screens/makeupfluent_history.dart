import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misiontic_template/ui/app.dart';
import 'package:misiontic_template/ui/theme/text_styles.dart';

import '../../../../theme_changer.dart';
import 'makeupfluente_ingresar.dart';

//void main() {
//  WidgetsFlutterBinding.ensureInitialized();
//  runApp(const App());
//}

//void main() {
//  runApp(Myapp());
//}

// construir una clase para el widget Myapp
class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MAKEUPFLUENT",
      theme: ThemeData(brightness: Brightness.light),
      home: Home(),
      debugShowCheckedModeBanner: false,
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
        //appBar: AppBar(
        //  title: Text("MAKEUPFLUENT"),
        //),
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
            height: 25.0,
          ),
          Encabezado(),
          SizedBox(
            height: 40.0,
          ),
          ContenidoHistory(),
          SizedBox(
            height: 35.0,
          ),
          Publicar(),
          SizedBox(
            height: 330.0,
          ),
          BarraInfNav()
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
          SizedBox.shrink(),
          IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xFFFC5C9C),
              size: 30,
            ),
            onPressed: () {
              Get.back();
              print('Icono1 OK');
            },
          ),
        ],
      ),
    );
  }

  //Crear widget para Campo Post, texto a ingresar por el usuario
  Widget ContenidoHistory() {
    return Container(
      width: 400.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: TextField(
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: 'Noir_medium',
              color: Color(0xFFFCCDE2),
              fontSize: 20),
          decoration: InputDecoration(
            hintText: 'Texto',
            fillColor: Color(0xFFFCCDE2),
            filled: true,
          ),
        ),
      ),
    );
  }

  //Crear widget para Opcion Publicar Post
  Widget Publicar() {
    return TextButton(
      child: Text('Publicar',
          style: TextStyle(
              fontFamily: 'Lemon Milk',
              color: Color(0xFF9E2A63),
              fontSize: 30)),
      onPressed: () {
        print('Boton Funcionando');
      },
    );
  }

  //Crear widget para Barra Navegacion Inferior
  Widget BarraInfNav() {
    return BottomAppBar(
        color: Color(0xFF9E2A63),
        shape: CircularNotchedRectangle(),
        child: Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 1.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {
                    print('Icono1 OK');
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.timelapse,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {
                    print('Icono2 OK');
                  },
                ),
                SizedBox.shrink(),
                IconButton(
                  icon: Icon(
                    Icons.chat_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {
                    print('Icono3 OK');
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {
                    print('Icono4 OK');
                  },
                )
              ],
            )));
  }
}


class HistoryPageView extends StatelessWidget {
  const HistoryPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      defaultBrightness: getTheme(),
      builder: (context, defaultBrightness) {
        return MaterialApp(
          title: "MAKEUPFLUENT",
          theme: ThemeData(primarySwatch: Colors.blue, brightness: defaultBrightness),
          home: HistoryPage(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}