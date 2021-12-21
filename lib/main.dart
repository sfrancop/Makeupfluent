import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:misiontic_template/ui/app.dart';
import 'package:misiontic_template/ui/theme/text_styles.dart';
import 'ui/my_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:loggy/loggy.dart';

//void main() {
//  WidgetsFlutterBinding.ensureInitialized();
//  runApp(const App());
//}
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // Replace with actual values
    options: FirebaseOptions(
      apiKey: "",
      appId: "misiontic-2022",
      messagingSenderId: "88621640009",
      projectId: "misiontic-2022",
    ),
  );
  setUsers();
  runApp(MyApp());
}

Map<String, Map> data = {"example": {"name": "a"}};

void setUsers() async {
    CollectionReference collectionReference = FirebaseFirestore.instance.collection("users");
    QuerySnapshot users = await collectionReference.get();
    for(var doc in users.docs){
      var username = doc["username"];
      var password = doc["password"];
      var mail = doc["mail"];
      data[username] = {"username": username, "password": password, "mail": mail};
    }
  }

Map getUsers(){
  return data;
}