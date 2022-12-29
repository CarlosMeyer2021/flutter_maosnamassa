// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_maosnamassa/navegacao/page1.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      settings: RouteSettings(name: 'page1'),
                      builder: (context) => Page1(),
                    ),
                  (route) => route.isFirst);
                },
                child: Text('Page 1 via PAGE')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('pop')),
            ElevatedButton(onPressed: () {}, child: Text('Page 3 via Named')),
          ],
        ),
      ),
    );
  }
}
