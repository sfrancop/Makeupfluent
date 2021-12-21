import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeBuilder extends StatefulWidget {

  final Widget Function(BuildContext context, Brightness brightness) builder;
  final Brightness defaultBrightness;
  ThemeBuilder({required this.builder, required this.defaultBrightness});
  @override
  _ThemeBuilderState createState() => _ThemeBuilderState();
  static _ThemeBuilderState? of(BuildContext context)
  {
    return context.findAncestorStateOfType();
  }
}

class _ThemeBuilderState extends State<ThemeBuilder>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Brightness _brightness;
  late bool isDarkMode;
  late bool outPut;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _brightness = widget.defaultBrightness;
    isDarkMode = true;

    if(mounted)
    setState(() {
      
    });

  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  Future<void> changeTheme() async {
    
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {

      _brightness = _brightness == Brightness.dark ? Brightness.light : Brightness.dark;

      isDarkMode = isDarkMode == true ? false : true;
      //print(getIsDark());
      prefs.setBool('theme', getIsDark());
      //var aa = prefs.getBool('theme');
      //print(aa);
    });
  }

  late Brightness theme = Brightness.light;

  Future <void> isDarkTheme() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.getBool("theme") == false){
      theme = Brightness.dark;
    }
  }

  Brightness getIsDarkTheme(){
    return theme;
  }

  bool getIsDark(){
    return isDarkMode;
  }

  Brightness getCurrentBrightness(){
    return _brightness;
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _brightness);
  }
}
