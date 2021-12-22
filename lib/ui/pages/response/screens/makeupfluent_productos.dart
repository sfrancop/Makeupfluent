import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misiontic_template/ui/app.dart';
import 'package:misiontic_template/ui/theme/text_styles.dart';
import 'package:http/http.dart' as http;

import '../../../../theme_changer.dart';
import 'makeupfluente_ingresar.dart';
import 'package:flutter/services.dart' show rootBundle;

List<Widget> posts = [];

Future<String> getJson() {
  return rootBundle.loadString('api.json');
}

// construir una clase para el widget my_app
class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      defaultBrightness: getTheme(),
      builder: (context, defaultBrightness) {
        return MaterialApp(
          title: "MAKEUPFLUENT",
          theme: ThemeData(primarySwatch: Colors.blue, brightness: defaultBrightness),
          home: Home(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

var data;
List<Product> productsList = [];

class _HomeState extends State<Home> {
  late Future<List<Product>> _data;

  Future<List<Product>> _getProducts() async {
    data = json.decode(await getJson());

    // var a = postItem(data[0]["brand"], data[0]["name"], data[0]["image_link"], data[0]["description"], data[0]["price"]);
    // var b = postItem(data[1]["brand"], data[1]["name"], data[1]["image_link"], data[1]["description"], data[1]["price"]);

    // posts.add(a);
    // posts.add(b);

    for (var item in data){
      var a = postItem(item["brand"], item["name"], item["image_link"], item["description"], item["price"]);
      posts.add(a);
      posts.add(SizedBox(height: 15.0,));
    }
    return productsList;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getProducts();
    print(data[0]["brand"]);
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(body: Cuerpo()));
  }

  //crear widget con imagen de fondo
  Widget Cuerpo() {
    return Scaffold(body: ListView(children: posts),);
  }
}

class Product{

  late String brand;
  late String name;
  late String image_link;
  late String description;
  late String price;

  Product(brand, name, image_link, description, price){
    this.brand = brand;
    this.name = name;
    this.image_link = image_link;
    this.description = description;
    this.price = price;
  }
}

Widget postItem(String brand, String name, String image_link, String description, String price){
  return Container(
                height: 100.0,
                width: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFF9E2A63),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.shop),
                    // Image(
                    //   alignment: Alignment.topLeft,
                    //   image: (AssetImage('assets/images/user.png')),
                    //   width: 50.0,
                    //   height: 20.0,
                    // ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(brand,
                        style: TextStyle(
                            fontFamily: 'Noir_medium',
                            color: Colors.white,
                            fontSize: 20.0)),
                    SizedBox(
                      width: 10,
                    ),
                    Text(name,
                        style: TextStyle(
                            fontFamily: 'Noir_medium',
                            color: Colors.white,
                            fontSize: 20.0)),
                    SizedBox(
                      width: 10,
                    ),
                    Text(price,
                        style: TextStyle(
                            fontFamily: 'Noir_medium',
                            color: Colors.white,
                            fontSize: 20.0)),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                )
              
                );
}