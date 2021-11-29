import 'package:flutter/material.dart';
import 'package:misiontic_template/ui/app.dart';
import 'package:misiontic_template/ui/theme/text_styles.dart';

//void main() {
//  WidgetsFlutterBinding.ensureInitialized();
//  runApp(const App());
//}

void main() {
  runApp(Myapp());
}

// construir una clase para el widget Myapp
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MAKEUPFLUENT",
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
            height: 20.0,
          ),
          BuscarUsuario(),
          SizedBox(
            height: 15.0,
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
            height: 200.0,
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
      ],
    ));
  }

  //Crear widget para Usuario1
  Widget BuscarUsuario() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: TextField(
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: 'Noir_medium', color: Color(0xFFFC5C9C), fontSize: 20),
        decoration: InputDecoration(
          hintText: 'Usuario',
          fillColor: Color(0xFFFCCDE2),
          filled: true,
        ),
      ),
    );
  }

  //Crear widget para Usuario1
  Widget InfoUsuario1() {
    return Container(
        color: Color(0xFF9E2A63),
        height: 40.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
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
                    fontFamily: 'Noir', color: Colors.white, fontSize: 20)),
          ],
        ));
  }

  //Crear widget para Usuario2
  Widget InfoUsuario2() {
    return Container(
        color: Color(0xFF9E2A63),
        height: 40.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
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
                    fontFamily: 'Noir', color: Colors.white, fontSize: 20)),
          ],
        ));
  }

  //Crear widget para Usuario3
  Widget InfoUsuario3() {
    return Container(
        color: Color(0xFF9E2A63),
        height: 40.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
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
                    fontFamily: 'Noir', color: Colors.white, fontSize: 20)),
          ],
        ));
  }

  //Crear widget para Usuario5
  Widget InfoUsuario4() {
    return Container(
        color: Color(0xFF9E2A63),
        height: 40.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
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
                    fontFamily: 'Noir', color: Colors.white, fontSize: 20)),
          ],
        ));
  }

  //Crear widget para Usuario5
  Widget InfoUsuario5() {
    return Container(
        color: Color(0xFF9E2A63),
        height: 40.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
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
                    fontFamily: 'Noir', color: Colors.white, fontSize: 20)),
          ],
        ));
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
