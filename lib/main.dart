// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_maosnamassa/navegacao/navegacao_params/lista.dart';
import 'package:flutter_maosnamassa/navegacao/page1.dart';
import 'package:flutter_maosnamassa/navegacao/page2.dart';
import 'package:flutter_maosnamassa/navegacao/page3.dart';
import 'package:flutter_maosnamassa/navegacao/page4.dart';
import 'navegacao/home_page.dart' as navegacao;
//import 'package:flutter_maosnamassa/images/images_page.dart';
//import 'home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //home: navegacao.HomePage(),
      //home: ImagesPage(),
      initialRoute: '/navegacao_param',
      routes: {
        '/':(_) => navegacao.HomePage(),
        '/page1':(_) => Page1(),
        Page2.routeName:(_) => Page2(),
        '/page3':(_) => Page3(),
        '/page4':(_) => Page4(),
        '/navegacao_param': (_) => Lista(),
      },
    );
  }
}







