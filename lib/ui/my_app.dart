import 'package:flutter/material.dart';
import 'content_page.dart';
//import 'lib/ui/content_page.dart';
//import 'C:\Users\juand\Documents\JD\Flia Tulay Olmos\Proyectos\Mintic2022\Ciclo 4\Aplicaciones Moviles\Git\Makeupfluent\lib\ui\content_page.dart';
//import 'pages/content_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Nav Video',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const ContentPage(),
    );
  }
}