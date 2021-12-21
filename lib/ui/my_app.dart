import 'package:misiontic_template/domain/controller/authentication_controller.dart';
import 'package:misiontic_template/domain/controller/chat_controller.dart';
import 'package:misiontic_template/domain/controller/firestore_controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misiontic_template/constants.dart';
import 'package:misiontic_template/ui/pages/response/screens/makeupfluent_post.dart';
import 'package:misiontic_template/ui/pages/response/screens/makeupfluent_registro.dart';
import 'package:misiontic_template/ui/pages/response/screens/makeupfluente_ingresar.dart';
import 'content_page.dart';
import 'pages/response/screens/makeulfluent_home_post.dart';
import 'pages/response/screens/makeupfluent_history.dart';
import 'package:get/get.dart';
import 'firebase_central.dart';

final Future<FirebaseApp> _initialization = Firebase.initializeApp();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Nav Video',
      theme: ThemeData(        primarySwatch: Colors.blue,
      ),
      initialRoute: login_Route,
      getPages: [
        GetPage(name: login_Route, page: () => LoginView()),
        GetPage(name: signUp_Route, page: () => SignUp()),
        GetPage(name: post_Route, page: () => PostPage()),
        GetPage(name: history_Route, page: () => HistoryPage()),
        GetPage(name: home_Route, page: () => ContentPage(), transition: Transition.zoom),
      ],
      //home: const ContentPage(),
    );
  }
}

class Wrong extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Something went wrong")),
    );
  }
}

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Loading")),
    );
  }
}