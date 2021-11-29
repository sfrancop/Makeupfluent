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
            height: 15.0,
          ),
          Encabezado(),
          SizedBox(
            height: 20.0,
          ),
          FilaUsuarios1(),
          SizedBox(
            height: 1.0,
          ),
          AccesoUsuarios1(),
          SizedBox(
            height: 15.0,
          ),
          FilaUsuarios2(),
          SizedBox(
            height: 15.0,
          ),
          AccesoUsuarios2(),
          SizedBox(
            height: 15.0,
          ),
          FilaUsuarios3(),
          SizedBox(
            height: 15.0,
          ),
          AccesoUsuarios3(),
          SizedBox(
            height: 240.0,
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
            print('Icono2 OK');
          },
        ),
      ],
    ));
  }

  //Crear widget para FilaUsuarios1
  Widget FilaUsuarios1() {
    return Container(
        color: Color(0xFFFFFFFF),
        height: 40.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 70.0,
            ),
            Image(
              alignment: Alignment.topLeft,
              image: (AssetImage('assets/images/user.png')),
              width: 50.0,
              height: 20.0,
            ),
            SizedBox(
              width: 50.0,
            ),
            Image(
              alignment: Alignment.center,
              image: (AssetImage('assets/images/user.png')),
              width: 50.0,
              height: 20.0,
            ),
            SizedBox(width: 60.0),
            Image(
              alignment: Alignment.topRight,
              image: (AssetImage('assets/images/user.png')),
              width: 50.0,
              height: 20.0,
            ),
            SizedBox(
              width: 50.0,
            ),
          ],
        ));
  }

  //Crear widget para AccesoUsuarios1
  Widget AccesoUsuarios1() {
    return Container(
        color: Color(0xFFFFFFFF),
        height: 35.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 35.0,
            ),
            TextButton(
              child: Text('Usuario',
                  style: TextStyle(
                      fontFamily: 'Lemon Milk',
                      color: Color(0xFF9E2A63),
                      fontSize: 15.0)),
              onPressed: () {
                print('Boton1 OK');
              },
            ),
            SizedBox(
              width: 35.0,
            ),
            TextButton(
              child: Text('Usuario',
                  style: TextStyle(
                      fontFamily: 'Lemon Milk',
                      color: Color(0xFF9E2A63),
                      fontSize: 15.0)),
              onPressed: () {
                print('Boton2 OK');
              },
            ),
            SizedBox(
              width: 35.0,
            ),
            TextButton(
              child: Text('Usuario',
                  style: TextStyle(
                      fontFamily: 'Lemon Milk',
                      color: Color(0xFF9E2A63),
                      fontSize: 15.0)),
              onPressed: () {
                print('Boton3 OK');
              },
            ),
            SizedBox(
              width: 20.0,
            ),
          ],
        ));
  }

  //Crear widget para FilaUsuarios2
  Widget FilaUsuarios2() {
    return Container(
        color: Color(0xFFFFFFFF),
        height: 40.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 70.0,
            ),
            Image(
              alignment: Alignment.topLeft,
              image: (AssetImage('assets/images/user.png')),
              width: 50.0,
              height: 20.0,
            ),
            SizedBox(
              width: 50.0,
            ),
            Image(
              alignment: Alignment.center,
              image: (AssetImage('assets/images/user.png')),
              width: 50.0,
              height: 20.0,
            ),
            SizedBox(width: 60.0),
            Image(
              alignment: Alignment.topRight,
              image: (AssetImage('assets/images/user.png')),
              width: 50.0,
              height: 20.0,
            ),
            SizedBox(
              width: 50.0,
            ),
          ],
        ));
  }

  //Crear widget para AccesoUsuarios2
  Widget AccesoUsuarios2() {
    return Container(
        color: Color(0xFFFFFFFF),
        height: 35.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 35.0,
            ),
            TextButton(
              child: Text('Usuario',
                  style: TextStyle(
                      fontFamily: 'Lemon Milk',
                      color: Color(0xFF9E2A63),
                      fontSize: 15.0)),
              onPressed: () {
                print('Boton1 OK');
              },
            ),
            SizedBox(
              width: 35.0,
            ),
            TextButton(
              child: Text('Usuario',
                  style: TextStyle(
                      fontFamily: 'Lemon Milk',
                      color: Color(0xFF9E2A63),
                      fontSize: 15.0)),
              onPressed: () {
                print('Boton2 OK');
              },
            ),
            SizedBox(
              width: 35.0,
            ),
            TextButton(
              child: Text('Usuario',
                  style: TextStyle(
                      fontFamily: 'Lemon Milk',
                      color: Color(0xFF9E2A63),
                      fontSize: 15.0)),
              onPressed: () {
                print('Boton3 OK');
              },
            ),
            SizedBox(
              width: 20.0,
            ),
          ],
        ));
  }

  //Crear widget para FilaUsuarios3
  Widget FilaUsuarios3() {
    return Container(
        color: Color(0xFFFFFFFF),
        height: 40.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 70.0,
            ),
            Image(
              alignment: Alignment.topLeft,
              image: (AssetImage('assets/images/user.png')),
              width: 50.0,
              height: 20.0,
            ),
            SizedBox(
              width: 50.0,
            ),
            Image(
              alignment: Alignment.center,
              image: (AssetImage('assets/images/user.png')),
              width: 50.0,
              height: 20.0,
            ),
            SizedBox(width: 60.0),
            Image(
              alignment: Alignment.topRight,
              image: (AssetImage('assets/images/user.png')),
              width: 50.0,
              height: 20.0,
            ),
            SizedBox(
              width: 50.0,
            ),
          ],
        ));
  }

  //Crear widget para AccesoUsuarios3
  Widget AccesoUsuarios3() {
    return Container(
        color: Color(0xFFFFFFFF),
        height: 35.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 35.0,
            ),
            TextButton(
              child: Text('Usuario',
                  style: TextStyle(
                      fontFamily: 'Lemon Milk',
                      color: Color(0xFF9E2A63),
                      fontSize: 15.0)),
              onPressed: () {
                print('Boton1 OK');
              },
            ),
            SizedBox(
              width: 35.0,
            ),
            TextButton(
              child: Text('Usuario',
                  style: TextStyle(
                      fontFamily: 'Lemon Milk',
                      color: Color(0xFF9E2A63),
                      fontSize: 15.0)),
              onPressed: () {
                print('Boton2 OK');
              },
            ),
            SizedBox(
              width: 35.0,
            ),
            TextButton(
              child: Text('Usuario',
                  style: TextStyle(
                      fontFamily: 'Lemon Milk',
                      color: Color(0xFF9E2A63),
                      fontSize: 15.0)),
              onPressed: () {
                print('Boton3 OK');
              },
            ),
            SizedBox(
              width: 20.0,
            ),
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
