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
    return (Scaffold(body: Cuerpo()));
  }

  //crear widget con imagen de fondo
  Widget Cuerpo() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
          child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, //alinear contenido de columna
        children: <Widget>[
          Nombre(),
          SizedBox(
            height: 100.0,
          ),
          Logo(),
          SizedBox(
            height: 5.0,
          ),
          Correo(),
          Contrasena(),
          SizedBox(
            height: 10.0,
          ),
          Registrarse(),
          SizedBox(
            height: 20.0,
          ),
          BotonInicio1(),
        ],
      )),
    );
  }

  //Crear widget para Titulo Inicio de Sesion
  Widget Nombre() {
    return Text('INGRESAR',
        style: TextStyle(
          color: Color(0xFF9E2A63),
          fontFamily: 'Lemon Milk',
          //fontStyle: FontStyle.italic,
          fontSize: 30.0,
        )); //fontWeight: FontWeight.bold));
  }

  //Crear widget para logo app
  Widget Logo() {
    return Container(
      child: Image(
        image: (AssetImage('assets/images/logo-01.jpg')),
        width: 150.0,
        height: 150.0,
      ),
    );
  }

  //Crear widget para Campo Correo

  Widget Correo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: TextField(
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: 'NonSerif', color: Color(0xFFFC5C9C), fontSize: 20),
        decoration: InputDecoration(
          hintText: 'Correo',
          fillColor: Color(0xFFFCCDE2),
          filled: true,
        ),
      ),
    );
  }

  //Crear widget para Contraseña
  Widget Contrasena() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: TextField(
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: 'NonSerif', color: Color(0xFFFC5C9C), fontSize: 20),
        decoration: InputDecoration(
          hintText: 'Contraseña',
          fillColor: Color(0xFFFCCDE2),
          filled: true,
        ),
      ),
    );
  }

  //Crear widget para Opcion Registro
  Widget Registrarse() {
    return TextButton(
      child: Text('No tienes cuenta? Creala',
          style: TextStyle(
              fontFamily: 'NonSerif', color: Color(0xFFFC5C9C), fontSize: 20)),
      onPressed: () {
        print('Boton Funcionando');
      },
    );
  }

  //Crear widget para inicio sesion
  Widget BotonInicio1() {
    return MaterialButton(
      color: Color(0xFFFCCDE2),
      minWidth: 200.0,
      height: 50.0,
      child: Text(
        'Listo',
        style: TextStyle(
            fontFamily: 'NonSerif', color: Color(0xFFFC5C9C), fontSize: 20),
      ),
      onPressed: () {
        print('Boton Funcionando');
      },
    );
  }
}
