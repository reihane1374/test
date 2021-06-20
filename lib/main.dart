import 'package:flutter/material.dart';
import 'package:flutter_desgin_app/IosDesgin.dart';
import 'AndroidDesgin.dart';
import 'PlatformType.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  PlatformType platform=new PlatformType();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (platform.platformTypeVal()=="ios") {
      return IosDesgin();
    } else if (platform.platformTypeVal() == "android") {
      return AndroidDesgin();
    } else {
      return Text("Not supported");
    }
  }

}



