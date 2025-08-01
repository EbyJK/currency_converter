import 'package:flutter/material.dart';
import 'package:currency_converter/screens/home.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}): super(key:key);

  @override 
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title:'Currency Convertor',
      theme: ThemeData(
        primarySwatch:Colors.blue,
        ),
      debugShowCheckedModeBanner:false,
      home:Home(),
      );
  }
}