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
          InfoUsuario1(),
          SizedBox(
            height: 15.0,
          ),
          UserPost1(),
          SizedBox(
            height: 15.0,
          ),
          InfoUsuario2(),
          SizedBox(
            height: 15.0,
          ),
          UserPost2(),
          SizedBox(
            height: 15.0,
          ),
          InfoUsuario3(),
          SizedBox(
            height: 15.0,
          ),
          UserPost3(),
          SizedBox(
            height: 170.0,
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
            Icons.add,
            color: Color(0xFFFC5C9C),
            size: 30,
          ),
          onPressed: () {
            print('Icono1 OK');
          },
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

  //Crear widget para Campo Post, texto ingresado por el usuario
  Widget UserPost1() {
    return Text(
      'Lorem Ipsum is simply dummy text of the printing and typesetting',
      textAlign: TextAlign.center,
      style: const TextStyle(
          fontFamily: 'Noir_medium', color: Color(0xFFFC5C9C), fontSize: 20),
    );
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
            Text('Usuario1',
                style: TextStyle(
                    fontFamily: 'Noir_medium',
                    color: Colors.white,
                    fontSize: 20)),
          ],
        ));
  }

  //Crear widget para Campo Post, texto ingresado por el usuario
  Widget UserPost2() {
    return Text(
      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
      textAlign: TextAlign.center,
      style: const TextStyle(
          fontFamily: 'Noir_medium', color: Color(0xFFFC5C9C), fontSize: 20),
    );
  }

  //Crear widget para Usuario2
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
            Text('Usuario1',
                style: TextStyle(
                    fontFamily: 'Noir_medium',
                    color: Colors.white,
                    fontSize: 20)),
          ],
        ));
  }

  //Crear widget para Campo Post, texto ingresado por el usuario
  Widget UserPost3() {
    return Text(
      'Lorem Ipsum is simply dummy text of the printing and typesetting',
      textAlign: TextAlign.center,
      style: const TextStyle(
          fontFamily: 'Noir_medium', color: Color(0xFFFC5C9C), fontSize: 20),
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
