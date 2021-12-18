import 'package:flutter/material.dart';

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

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _brightness = widget.defaultBrightness;

    if(mounted)
    setState(() {
      
    });

  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void changeTheme(){
    
    setState(() {
      _brightness = _brightness == Brightness.dark ? Brightness.light : Brightness.dark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _brightness);
  }
}