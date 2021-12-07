import 'package:flutter/material.dart';
import 'package:misiontic_template/ui/app.dart';
import 'package:misiontic_template/ui/theme/text_styles.dart';

// construir una clase para el widget my_app
class StoriesPage extends StatelessWidget {
  const StoriesPage({Key? key}) : super(key: key);

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
              width: 30.0,
            ),
            Container(
              width: 85.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: MaterialButton(
                  color: Color(0xFF9E2A63),
                  child: Text(
                    'Usuario',
                    style: TextStyle(
                        fontFamily: 'Noir_medium',
                        color: Colors.white,
                        fontSize: 15),
                  ),
                  onPressed: () {
                    print('Boton Funcionando');
                  },
                ),
              ),
            ),
            SizedBox(
              width: 40.0,
            ),
            Container(
              width: 85.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: MaterialButton(
                  color: Color(0xFF9E2A63),
                  child: Text(
                    'Usuario',
                    style: TextStyle(
                        fontFamily: 'Noir_medium',
                        color: Colors.white,
                        fontSize: 15),
                  ),
                  onPressed: () {
                    print('Boton Funcionando');
                  },
                ),
              ),
            ),
            SizedBox(
              width: 40.0,
            ),
            Container(
              width: 85.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: MaterialButton(
                  color: Color(0xFF9E2A63),
                  child: Text(
                    'Usuario',
                    style: TextStyle(
                        fontFamily: 'Noir_medium',
                        color: Colors.white,
                        fontSize: 15),
                  ),
                  onPressed: () {
                    print('Boton Funcionando');
                  },
                ),
              ),
            ),
            SizedBox(
              width: 40.0,
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
              width: 30.0,
            ),
            Container(
              width: 85.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: MaterialButton(
                  color: Color(0xFF9E2A63),
                  child: Text(
                    'Usuario',
                    style: TextStyle(
                        fontFamily: 'Noir_medium',
                        color: Colors.white,
                        fontSize: 15),
                  ),
                  onPressed: () {
                    print('Boton Funcionando');
                  },
                ),
              ),
            ),
            SizedBox(
              width: 40.0,
            ),
            Container(
              width: 85.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: MaterialButton(
                  color: Color(0xFF9E2A63),
                  child: Text(
                    'Usuario',
                    style: TextStyle(
                        fontFamily: 'Noir_medium',
                        color: Colors.white,
                        fontSize: 15),
                  ),
                  onPressed: () {
                    print('Boton Funcionando');
                  },
                ),
              ),
            ),
            SizedBox(
              width: 40.0,
            ),
            Container(
              width: 85.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: MaterialButton(
                  color: Color(0xFF9E2A63),
                  child: Text(
                    'Usuario',
                    style: TextStyle(
                        fontFamily: 'Noir_medium',
                        color: Colors.white,
                        fontSize: 15),
                  ),
                  onPressed: () {
                    print('Boton Funcionando');
                  },
                ),
              ),
            ),
            SizedBox(
              width: 40.0,
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
              width: 30.0,
            ),
            Container(
              width: 85.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: MaterialButton(
                  color: Color(0xFF9E2A63),
                  child: Text(
                    'Usuario',
                    style: TextStyle(
                        fontFamily: 'Noir_medium',
                        color: Colors.white,
                        fontSize: 15),
                  ),
                  onPressed: () {
                    print('Boton Funcionando');
                  },
                ),
              ),
            ),
            SizedBox(
              width: 40.0,
            ),
            Container(
              width: 85.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: MaterialButton(
                  color: Color(0xFF9E2A63),
                  child: Text(
                    'Usuario',
                    style: TextStyle(
                        fontFamily: 'Noir_medium',
                        color: Colors.white,
                        fontSize: 15),
                  ),
                  onPressed: () {
                    print('Boton Funcionando');
                  },
                ),
              ),
            ),
            SizedBox(
              width: 40.0,
            ),
            Container(
              width: 85.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: MaterialButton(
                  color: Color(0xFF9E2A63),
                  child: Text(
                    'Usuario',
                    style: TextStyle(
                        fontFamily: 'Noir_medium',
                        color: Colors.white,
                        fontSize: 15),
                  ),
                  onPressed: () {
                    print('Boton Funcionando');
                  },
                ),
              ),
            ),
            SizedBox(
              width: 40.0,
            ),
          ],
        ));
  }
  
}
